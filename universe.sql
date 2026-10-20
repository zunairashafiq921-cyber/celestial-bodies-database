--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: astrnoid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astrnoid (
    astrnoid_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean NOT NULL
);


ALTER TABLE public.astrnoid OWNER TO freecodecamp;

--
-- Name: astrnoid_astrnoid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astrnoid_astrnoid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astrnoid_astrnoid_id_seq OWNER TO freecodecamp;

--
-- Name: astrnoid_astrnoid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astrnoid_astrnoid_id_seq OWNED BY public.astrnoid.astrnoid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    has_life boolean,
    galaxy_type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    planet_type text,
    star_id integer NOT NULL,
    has_life boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: astrnoid astrnoid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrnoid ALTER COLUMN astrnoid_id SET DEFAULT nextval('public.astrnoid_astrnoid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: astrnoid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astrnoid VALUES (1, 'Ceres', false);
INSERT INTO public.astrnoid VALUES (2, 'Vesta', false);
INSERT INTO public.astrnoid VALUES (3, 'Pallas', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Whirlpool Galaxy', 9000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Sombrero Galaxy', 13000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pinwheel Galaxy', 10000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 13600, true, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 10000, true, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 9000, false, 'Spiral');
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 13000, false, 'Spiral');
INSERT INTO public.galaxy VALUES (8, 'Pinwheel Galaxy', 10000, false, 'Spiral');
INSERT INTO public.galaxy VALUES (9, 'Cartwheel Galaxy', 5000, false, 'Ring');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (61, 'Moon', 384400, true, 39);
INSERT INTO public.moon VALUES (62, 'Phobos', 9376, false, 40);
INSERT INTO public.moon VALUES (63, 'Deimos', 23463, false, 40);
INSERT INTO public.moon VALUES (64, 'Io', 628300, true, 41);
INSERT INTO public.moon VALUES (65, 'Europa', 628300, true, 41);
INSERT INTO public.moon VALUES (66, 'Ganymede', 628300, true, 41);
INSERT INTO public.moon VALUES (67, 'Callisto', 628300, true, 41);
INSERT INTO public.moon VALUES (68, 'Titan', 1270000, true, 42);
INSERT INTO public.moon VALUES (69, 'Enceladus', 1270000, true, 42);
INSERT INTO public.moon VALUES (70, 'Mimas', 1270000, true, 42);
INSERT INTO public.moon VALUES (71, 'Rhea', 1270000, true, 42);
INSERT INTO public.moon VALUES (72, 'Titania', 2580000, true, 43);
INSERT INTO public.moon VALUES (73, 'Oberon', 2580000, true, 43);
INSERT INTO public.moon VALUES (74, 'Umbriel', 2580000, true, 43);
INSERT INTO public.moon VALUES (75, 'Ariel', 2580000, true, 43);
INSERT INTO public.moon VALUES (76, 'Triton', 4350000, true, 44);
INSERT INTO public.moon VALUES (77, 'Charon', 12500000, true, 45);
INSERT INTO public.moon VALUES (78, 'Dysnomia', 9650000, false, 46);
INSERT INTO public.moon VALUES (79, 'Kepler Moon 1', 5000000, true, 47);
INSERT INTO public.moon VALUES (80, 'Kepler Moon 2', 6000000, true, 48);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (37, 'Mercury', 'Terrestrial', 1, false);
INSERT INTO public.planet VALUES (38, 'Venus', 'Terrestrial', 1, false);
INSERT INTO public.planet VALUES (39, 'Earth', 'Terrestrial', 1, true);
INSERT INTO public.planet VALUES (40, 'Mars', 'Terrestrial', 1, false);
INSERT INTO public.planet VALUES (41, 'Jupiter', 'Gas Giant', 1, false);
INSERT INTO public.planet VALUES (42, 'Saturn', 'Gas Giant', 1, false);
INSERT INTO public.planet VALUES (43, 'Uranus', 'Ice Giant', 1, false);
INSERT INTO public.planet VALUES (44, 'Neptune', 'Ice Giant', 1, false);
INSERT INTO public.planet VALUES (45, 'Kepler-22b', 'Exoplanet', 2, false);
INSERT INTO public.planet VALUES (46, 'Proxima Centauri b', 'Exoplanet', 3, false);
INSERT INTO public.planet VALUES (47, 'Kepler-452b', 'Exoplanet', 2, false);
INSERT INTO public.planet VALUES (48, 'TRAPPIST-1e', 'Exoplanet', 3, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 4600, 1);
INSERT INTO public.star VALUES (2, 'Sirius', false, 242, 1);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', false, 6000, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', false, 10, 2);
INSERT INTO public.star VALUES (5, 'Vega', false, 455, 2);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', false, 4850, 3);


--
-- Name: astrnoid_astrnoid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astrnoid_astrnoid_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 80, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astrnoid astrnoid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrnoid
    ADD CONSTRAINT astrnoid_pkey PRIMARY KEY (astrnoid_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: astrnoid unique_astrnoid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astrnoid
    ADD CONSTRAINT unique_astrnoid_id UNIQUE (astrnoid_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


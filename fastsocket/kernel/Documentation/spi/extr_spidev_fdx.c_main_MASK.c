#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC6 (int,char**,char*) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  verbose ; 

int FUNC9(int argc, char **argv)
{
	int		c;
	int		readcount = 0;
	int		msglen = 0;
	int		fd;
	const char	*name;

	while ((c = FUNC6(argc, argv, "hm:r:v")) != EOF) {
		switch (c) {
		case 'm':
			msglen = FUNC0(optarg);
			if (msglen < 0)
				goto usage;
			continue;
		case 'r':
			readcount = FUNC0(optarg);
			if (readcount < 0)
				goto usage;
			continue;
		case 'v':
			verbose++;
			continue;
		case 'h':
		case '?':
usage:
			FUNC5(stderr,
				"usage: %s [-h] [-m N] [-r N] /dev/spidevB.D\n",
				argv[0]);
			return 1;
		}
	}

	if ((optind + 1) != argc)
		goto usage;
	name = argv[optind];

	fd = FUNC7(name, O_RDWR);
	if (fd < 0) {
		FUNC8("open");
		return 1;
	}

	FUNC4(name, fd);

	if (msglen)
		FUNC2(fd, msglen);

	if (readcount)
		FUNC3(fd, readcount);

	FUNC1(fd);
	return 0;
}
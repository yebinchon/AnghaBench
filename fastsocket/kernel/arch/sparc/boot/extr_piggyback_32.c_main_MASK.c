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
struct stat {unsigned int st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,unsigned int) ; 
 scalar_t__ FUNC14 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 unsigned int FUNC16 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 unsigned int FUNC18 (int,char*,unsigned int) ; 

int FUNC19(int argc,char **argv)
{
	static char aout_magic[] = { 0x01, 0x03, 0x01, 0x07 };
	char buffer[1024], *q, *r;
	unsigned int i, j, k, start, end, offset;
	FILE *map;
	struct stat s;
	int image, tail;

	if (argc != 4) FUNC17();
	start = end = 0;
	if (FUNC14 (argv[3], &s) < 0) FUNC1 (argv[3]);
	map = FUNC5 (argv[2], "r");
	if (!map) FUNC1(argv[2]);
	while (FUNC4 (buffer, 1024, map)) {
		if (!FUNC15 (buffer + 8, " T start\n") || !FUNC15 (buffer + 16, " T start\n"))
			start = FUNC16 (buffer, NULL, 16);
		else if (!FUNC15 (buffer + 8, " A _end\n") || !FUNC15 (buffer + 16, " A _end\n"))
			end = FUNC16 (buffer, NULL, 16);
	}
	FUNC3 (map);
	if (!start || !end) {
		FUNC6 (stderr, "Could not determine start and end from System.map\n");
		FUNC2(1);
	}
	if ((image = FUNC11(argv[1],O_RDWR)) < 0) FUNC1(argv[1]);
	if (FUNC12(image,buffer,512) != 512) FUNC1(argv[1]);
	if (FUNC10 (buffer, "\177ELF", 4) == 0) {
		q = buffer + FUNC8(buffer + 28);
		i = FUNC8(q + 4) + FUNC8(buffer + 24) - FUNC8(q + 8);
		if (FUNC9(image,i,0) < 0) FUNC1("lseek");
		if (FUNC12(image,buffer,512) != 512) FUNC1(argv[1]);
		j = 0;
	} else if (FUNC10(buffer, aout_magic, 4) == 0) {
		i = j = 32;
	} else {
		FUNC6 (stderr, "Not ELF nor a.out. Don't blame me.\n");
		FUNC2(1);
	}
	k = i;
	i += (FUNC7(buffer + j + 2)<<2) - 512;
	if (FUNC9(image,i,0) < 0) FUNC1("lseek");
	if (FUNC12(image,buffer,1024) != 1024) FUNC1(argv[1]);
	for (q = buffer, r = q + 512; q < r; q += 4) {
		if (*q == 'H' && q[1] == 'd' && q[2] == 'r' && q[3] == 'S')
			break;
	}
	if (q == r) {
		FUNC6 (stderr, "Couldn't find headers signature in the kernel.\n");
		FUNC2(1);
	}
	offset = i + (q - buffer) + 10;
	if (FUNC9(image, offset, 0) < 0) FUNC1 ("lseek");

	FUNC13(buffer, 0);
	FUNC13(buffer + 4, 0x01000000);
	FUNC13(buffer + 8, (end + 32 + 4095) & ~4095);
	FUNC13(buffer + 12, s.st_size);

	if (FUNC18(image,buffer+2,14) != 14) FUNC1 (argv[1]);
	if (FUNC9(image, k - start + ((end + 32 + 4095) & ~4095), 0) < 0) FUNC1 ("lseek");
	if ((tail = FUNC11(argv[3],O_RDONLY)) < 0) FUNC1(argv[3]);
	while ((i = FUNC12 (tail,buffer,1024)) > 0)
		if (FUNC18(image,buffer,i) != i) FUNC1 (argv[1]);
	if (FUNC0(image) < 0) FUNC1("close");
	if (FUNC0(tail) < 0) FUNC1("close");
    	return 0;
}
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
 scalar_t__ FUNC7 (int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int,char*,int) ; 
 scalar_t__ FUNC11 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 unsigned int FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC14 (int,char*,unsigned int) ; 

int FUNC15(int argc,char **argv)
{
	char buffer [1024], *q, *r;
	unsigned int i, j, k, start, end, offset;
	FILE *map;
	struct stat s;
	int image, tail;
	
	start = end = 0;
	if (FUNC11 (argv[3], &s) < 0) FUNC1 (argv[3]);
	map = FUNC5 (argv[2], "r");
	if (!map) FUNC1(argv[2]);
	while (FUNC4 (buffer, 1024, map)) {
		if (!FUNC12 (buffer + 19, "_start\n"))
		start = FUNC13 (buffer + 8, NULL, 16);
		else if (!FUNC12 (buffer + 19, "_end\n"))
		end = FUNC13 (buffer + 8, NULL, 16);
	}
	FUNC3 (map);
	if ((image = FUNC9(argv[1],O_RDWR)) < 0) FUNC1(argv[1]);
	if (FUNC10(image,buffer,512) != 512) FUNC1(argv[1]);
	if (!FUNC8 (buffer, "\177ELF", 4)) {
		unsigned int *p = (unsigned int *)(buffer + *(unsigned int *)(buffer + 28));
		
		i = p[1] + *(unsigned int *)(buffer + 24) - p[2];
		if (FUNC7(image,i,0) < 0) FUNC1("lseek");
		if (FUNC10(image,buffer,512) != 512) FUNC1(argv[1]);
		j = 0;
	} else if (*(unsigned int *)buffer == 0x01030107) {
		i = j = 32;
	} else {
		FUNC6 (stderr, "Not ELF nor a.out. Don't blame me.\n");
		FUNC2(1);
	}
	k = i;
	if (j == 32 && buffer[40] == 'H' && buffer[41] == 'd' && buffer[42] == 'r' && buffer[43] == 'S') {
		offset = 40 + 10;
	} else {
		i += ((*(unsigned short *)(buffer + j + 2))<<2) - 512;
		if (FUNC7(image,i,0) < 0) FUNC1("lseek");
		if (FUNC10(image,buffer,1024) != 1024) FUNC1(argv[1]);
		for (q = buffer, r = q + 512; q < r; q += 4) {
			if (*q == 'H' && q[1] == 'd' && q[2] == 'r' && q[3] == 'S')
				break;
		}
		if (q == r) {
			FUNC6 (stderr, "Couldn't find headers signature in the kernel.\n");
			FUNC2(1);
		}
		offset = i + (q - buffer) + 10;
	}
	if (FUNC7(image, offset, 0) < 0) FUNC1 ("lseek");
	*(unsigned *)buffer = 0;
	*(unsigned *)(buffer + 4) = 0x01000000;
	*(unsigned *)(buffer + 8) = ((end + 32 + 8191) & ~8191);
	*(unsigned *)(buffer + 12) = s.st_size;
	if (FUNC14(image,buffer+2,14) != 14) FUNC1 (argv[1]);
	if (FUNC7(image, 4, 0) < 0) FUNC1 ("lseek");
	*(unsigned *)buffer = ((end + 32 + 8191) & ~8191) - (start & ~0x3fffffUL) + s.st_size;
	*(unsigned *)(buffer + 4) = 0;
	*(unsigned *)(buffer + 8) = 0;
	if (FUNC14(image,buffer,12) != 12) FUNC1 (argv[1]);
	if (FUNC7(image, k - start + ((end + 32 + 8191) & ~8191), 0) < 0) FUNC1 ("lseek");
	if ((tail = FUNC9(argv[3],O_RDONLY)) < 0) FUNC1(argv[3]);
	while ((i = FUNC10 (tail,buffer,1024)) > 0)
		if (FUNC14(image,buffer,i) != i) FUNC1 (argv[1]);
	if (FUNC0(image) < 0) FUNC1("close");
	if (FUNC0(tail) < 0) FUNC1("close");
    	return 0;
}
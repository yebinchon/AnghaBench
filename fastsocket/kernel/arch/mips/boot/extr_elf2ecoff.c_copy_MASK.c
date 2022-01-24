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
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(int out, int in, off_t offset, off_t size)
{
	char ibuf[4096];
	int remaining, cur, count;

	/* Go to the start of the ELF symbol table... */
	if (FUNC2(in, offset, SEEK_SET) < 0) {
		FUNC3("copy: lseek");
		FUNC0(1);
	}

	remaining = size;
	while (remaining) {
		cur = remaining;
		if (cur > sizeof ibuf)
			cur = sizeof ibuf;
		remaining -= cur;
		if ((count = FUNC4(in, ibuf, cur)) != cur) {
			FUNC1(stderr, "copy: read: %s\n",
				count ? FUNC5(errno) :
				"premature end of file");
			FUNC0(1);
		}
		if ((count = FUNC6(out, ibuf, cur)) != cur) {
			FUNC3("copy: write");
			FUNC0(1);
		}
	}
}
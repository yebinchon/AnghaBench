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
struct stat {int /*<<< orphan*/  st_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 scalar_t__ FUNC3 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,unsigned long,void*) ; 

__attribute__((used)) static unsigned long FUNC8(const char *name, unsigned long mem)
{
	int ifd;
	struct stat st;
	unsigned long len;

	ifd = FUNC5(name, O_RDONLY);
	/* fstat() is needed to get the file size. */
	if (FUNC3(ifd, &st) < 0)
		FUNC1(1, "fstat() on initrd '%s'", name);

	/*
	 * We map the initrd at the top of memory, but mmap wants it to be
	 * page-aligned, so we round the size up for that.
	 */
	len = FUNC6(st.st_size);
	FUNC4(ifd, FUNC2(mem - len), 0, st.st_size);
	/*
	 * Once a file is mapped, you can close the file descriptor.  It's a
	 * little odd, but quite useful.
	 */
	FUNC0(ifd);
	FUNC7("mapped initrd %s size=%lu @ %p\n", name, len, (void*)mem-len);

	/* We return the initrd size. */
	return len;
}
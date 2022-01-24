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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int checked_tmpdir ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* default_tmpdir ; 
 int errno ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ ,char) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void)
{
	int fd, found;
	char buf[128] = { '\0' };

	if (checked_tmpdir)
		return;

	checked_tmpdir = 1;

	FUNC4("Checking for tmpfs mount on /dev/shm...");

	fd = FUNC3("/proc/mounts", O_RDONLY);
	if (fd < 0) {
		FUNC4("failed to open /proc/mounts, errno = %d\n", errno);
		return;
	}

	while (1) {
		found = FUNC2(fd, buf, FUNC0(buf), ' ');
		if (found != 1)
			break;

		if (!FUNC6(buf, "/dev/shm", FUNC5("/dev/shm")))
			goto found;

		found = FUNC2(fd, buf, FUNC0(buf), '\n');
		if (found != 1)
			break;
	}

err:
	if (found == 0)
		FUNC4("nothing mounted on /dev/shm\n");
	else if (found < 0)
		FUNC4("read returned errno %d\n", -found);

out:
	FUNC1(fd);

	return;

found:
	found = FUNC2(fd, buf, FUNC0(buf), ' ');
	if (found != 1)
		goto err;

	if (FUNC6(buf, "tmpfs", FUNC5("tmpfs"))) {
		FUNC4("not tmpfs\n");
		goto out;
	}

	FUNC4("OK\n");
	default_tmpdir = "/dev/shm";
	goto out;
}
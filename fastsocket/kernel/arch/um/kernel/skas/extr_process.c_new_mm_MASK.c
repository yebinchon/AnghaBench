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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  STUB_CODE ; 
 int /*<<< orphan*/  STUB_DATA ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ skas_needs_stub ; 

int FUNC6(unsigned long stack)
{
	int fd, err;

	fd = FUNC5("/proc/mm", FUNC2(FUNC3(FUNC0())), 0);
	if (fd < 0)
		return fd;

	if (skas_needs_stub) {
		err = FUNC1(fd, STUB_CODE, STUB_DATA, stack);
		if (err) {
			FUNC4(fd);
			return err;
		}
	}

	return fd;
}
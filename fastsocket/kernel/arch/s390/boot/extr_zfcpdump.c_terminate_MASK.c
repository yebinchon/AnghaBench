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
 int /*<<< orphan*/  DEV_ZCORE_REIPL ; 
 int /*<<< orphan*/  LINUX_REBOOT_CMD_POWER_OFF ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  REIPL ; 
 int /*<<< orphan*/  WAIT_TIME_END ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	int fd;

	FUNC3(WAIT_TIME_END); /* give the messages time to be displayed */
	fd = FUNC1(DEV_ZCORE_REIPL, O_WRONLY, 0);
	if (fd == -1)
		goto no_reipl;
	FUNC4(fd, REIPL, 1);
	FUNC0(fd);
no_reipl:
	FUNC2(LINUX_REBOOT_CMD_POWER_OFF);
}
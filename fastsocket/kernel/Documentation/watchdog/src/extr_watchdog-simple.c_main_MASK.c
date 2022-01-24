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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int,char*,int) ; 

int FUNC7(void)
{
	int fd = FUNC3("/dev/watchdog", O_WRONLY);
	int ret = 0;
	if (fd == -1) {
		FUNC4("watchdog");
		FUNC1(EXIT_FAILURE);
	}
	while (1) {
		ret = FUNC6(fd, "\0", 1);
		if (ret != 1) {
			ret = -1;
			break;
		}
		ret = FUNC2(fd);
		if (ret)
			break;
		FUNC5(10);
	}
	FUNC0(fd);
	return ret;
}
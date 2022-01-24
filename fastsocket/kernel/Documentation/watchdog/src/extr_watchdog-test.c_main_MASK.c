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
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  WDIOC_SETOPTIONS ; 
 int /*<<< orphan*/  WDIOS_DISABLECARD ; 
 int /*<<< orphan*/  WDIOS_ENABLECARD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 

int FUNC8(int argc, char *argv[])
{
    fd = FUNC5("/dev/watchdog", O_WRONLY);

    if (fd == -1) {
	FUNC2(stderr, "Watchdog device not enabled.\n");
	FUNC1(stderr);
	FUNC0(-1);
    }

    if (argc > 1) {
	if (!FUNC7(argv[1], "-d", 2)) {
	    FUNC3(fd, WDIOC_SETOPTIONS, WDIOS_DISABLECARD);
	    FUNC2(stderr, "Watchdog card disabled.\n");
	    FUNC1(stderr);
	    FUNC0(0);
	} else if (!FUNC7(argv[1], "-e", 2)) {
	    FUNC3(fd, WDIOC_SETOPTIONS, WDIOS_ENABLECARD);
	    FUNC2(stderr, "Watchdog card enabled.\n");
	    FUNC1(stderr);
	    FUNC0(0);
	} else {
	    FUNC2(stderr, "-d to disable, -e to enable.\n");
	    FUNC2(stderr, "run by itself to tick the card.\n");
	    FUNC1(stderr);
	    FUNC0(0);
	}
    } else {
	FUNC2(stderr, "Watchdog Ticking Away!\n");
	FUNC1(stderr);
    }

    while(1) {
	FUNC4();
	FUNC6(1);
    }
}
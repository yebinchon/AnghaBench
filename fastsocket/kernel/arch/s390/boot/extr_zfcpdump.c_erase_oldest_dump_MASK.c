#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* dump_dir; int dump_nr; scalar_t__ parm_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_FIRST ; 
 scalar_t__ PARM_MODE_AUTO_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  WAIT_TIME_ERASE ; 
 TYPE_1__ g ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(void)
{
	int dump_nr;
	char dname[1024] = {};
	char answ[1024] = {};

	dump_nr = FUNC3(g.dump_dir, DUMP_FIRST);
	if (dump_nr < 0) {
		FUNC1("Internal error: dump number cannot be evaluated\n");
		return -1;
	}
	FUNC6(dname, "dump.%i", dump_nr);
	if (dump_nr == g.dump_nr) {
		FUNC1("Sorry, cannot delete any more dumps!\n");
		return -1;
	}
	if (g.parm_mode == PARM_MODE_AUTO_NUM) {
		FUNC0("Removing oldest dump: '%s'\n", dname);
	} else {
		while ((FUNC7(answ, "y") != 0) && (FUNC7(answ, "n") != 0)) {
			FUNC0("Remove oldest dump: '%s' (y/n)? ", dname);
			FUNC4("%s", answ);
		}
		if (FUNC7(answ, "n") == 0)
			return -1;
	}
	FUNC6(dname, "%s/dump.%i", g.dump_dir, dump_nr);
	if (FUNC9(dname) == -1) {
		FUNC2("Could not remove dump\n");
		return -1;
	}
	FUNC8();
	/*
	 * Wait some seconds in order to give ext3 time to discover that file
	 * has been removed.
	 */
	FUNC5(WAIT_TIME_ERASE);
	FUNC0("Dump removed!\n");
	return 0;
}
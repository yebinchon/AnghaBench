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
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int DUMP_FIRST ; 
 int DUMP_LAST ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int NO_DUMP ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC8(const char *dumpdir, int mode)
{
	DIR *dir = NULL;
	struct dirent *dir_ent;
	int dump_found, rc;

	rc = 0;
	dump_found = 0;
	dir = FUNC5(dumpdir);
	if (!dir) {
		FUNC2("Cannot evalute dump number\n");
		return -2;
	}

	while ((dir_ent = FUNC6(dir))) {
		int num;
		if (FUNC7(dir_ent->d_name, "dump.%ui", &num) == 1) {
			char suffix[1024] = {};

			/*
			 * check if we have something like dump.001
			 * this is not treated as dump, since we do not allow
			 * leading zeros.
			 * Also files like dump.-1, dump.-10 are ignored.
			 */
			FUNC7(dir_ent->d_name, "dump.%s", suffix);
			if (suffix[0] == '-')
				continue;
			if ((suffix[0] == '0') && FUNC4(suffix[1]))
				continue;
			if (!dump_found) {
				dump_found = 1;
				rc = num;
			} else if (mode == DUMP_LAST) {
				rc = FUNC0(num, rc);
			} else if (mode == DUMP_FIRST) {
				rc = FUNC1(num, rc);
			}
		}
	}
	if (!dump_found)
		rc = NO_DUMP;
	FUNC3(dir);

	return rc;
}
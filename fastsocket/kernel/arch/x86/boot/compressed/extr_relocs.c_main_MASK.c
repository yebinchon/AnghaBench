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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

int FUNC13(int argc, char **argv)
{
	int show_absolute_syms, show_absolute_relocs;
	int as_text;
	const char *fname;
	FILE *fp;
	int i;

	show_absolute_syms = 0;
	show_absolute_relocs = 0;
	as_text = 0;
	fname = NULL;
	for (i = 1; i < argc; i++) {
		char *arg = argv[i];
		if (*arg == '-') {
			if (FUNC10(argv[1], "--abs-syms") == 0) {
				show_absolute_syms = 1;
				continue;
			}

			if (FUNC10(argv[1], "--abs-relocs") == 0) {
				show_absolute_relocs = 1;
				continue;
			}
			else if (FUNC10(argv[1], "--text") == 0) {
				as_text = 1;
				continue;
			}
		}
		else if (!fname) {
			fname = arg;
			continue;
		}
		FUNC12();
	}
	if (!fname) {
		FUNC12();
	}
	fp = FUNC2(fname, "r");
	if (!fp) {
		FUNC0("Cannot open %s: %s\n",
			fname, FUNC11(errno));
	}
	FUNC5(fp);
	FUNC7(fp);
	FUNC8(fp);
	FUNC9(fp);
	FUNC6(fp);
	if (show_absolute_syms) {
		FUNC4();
		return 0;
	}
	if (show_absolute_relocs) {
		FUNC3();
		return 0;
	}
	FUNC1(as_text);
	return 0;
}
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
struct el_common {int dummy; } ;

/* Variables and functions */
 char* KERN_CRIT ; 
 scalar_t__ MCHK_DISPOSITION_DISMISS ; 
 unsigned long SCB_Q_PROCERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* err_print_prefix ; 
 scalar_t__ FUNC2 (struct el_common*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,unsigned int,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8(unsigned long vector, unsigned long la_ptr)
{
	struct el_common *mchk_header = (struct el_common *)la_ptr;

	/*
	 * Sync the processor
	 */
	FUNC4();
	FUNC1();

	/*
	 * Parse the logout frame without printing first. If the only error(s)
	 * found are have a disposition of "dismiss", then just dismiss them
	 * and don't print any message
	 */
	if (FUNC2(mchk_header, 0) != 
	    MCHK_DISPOSITION_DISMISS) {
		char *saved_err_prefix = err_print_prefix;
		err_print_prefix = KERN_CRIT;

		/*
		 * Either a nondismissable error was detected or no
		 * recognized error was detected  in the logout frame 
		 * -- report the error in either case
		 */
		FUNC5("%s*CPU %s Error (Vector 0x%x) reported on CPU %d:\n", 
		       err_print_prefix,
		       (vector == SCB_Q_PROCERR)?"Correctable":"Uncorrectable",
		       (unsigned int)vector, (int)FUNC6());
		
		FUNC2(mchk_header, 1);
		FUNC0(FUNC3(), NULL);

		err_print_prefix = saved_err_prefix;
	}

	/* 
	 * Release the logout frame 
	 */
	FUNC7(0x7);
	FUNC4();
}
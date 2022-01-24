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
 int /*<<< orphan*/ * dasd_debug_area ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * dasd_page_cache ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void)
{
#ifdef CONFIG_PROC_FS
	dasd_proc_exit();
#endif
	FUNC1();
        if (dasd_page_cache != NULL) {
		FUNC6(dasd_page_cache);
		dasd_page_cache = NULL;
	}
	FUNC2();
	FUNC0();
	if (dasd_debug_area != NULL) {
		FUNC5(dasd_debug_area);
		dasd_debug_area = NULL;
	}
	FUNC4();
}
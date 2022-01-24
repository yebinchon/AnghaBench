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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  TAPE_DBF_AREA ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  debug_sprintf_view ; 
 int /*<<< orphan*/  tape_3590_driver ; 

__attribute__((used)) static int
FUNC5(void)
{
	int rc;

	TAPE_DBF_AREA = FUNC2("tape_3590", 2, 2, 4 * sizeof(long));
	FUNC3(TAPE_DBF_AREA, &debug_sprintf_view);
#ifdef DBF_LIKE_HELL
	debug_set_level(TAPE_DBF_AREA, 6);
#endif

	FUNC0(3, "3590 init\n");
	/* Register driver for 3590 tapes. */
	rc = FUNC1(&tape_3590_driver);
	if (rc)
		FUNC0(3, "3590 init failed\n");
	else
		FUNC0(3, "3590 registered\n");
	return rc;
}
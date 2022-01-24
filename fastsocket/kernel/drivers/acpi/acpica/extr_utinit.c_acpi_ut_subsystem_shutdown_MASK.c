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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  return_VOID ; 
 int /*<<< orphan*/  ut_subsystem_shutdown ; 

void FUNC6(void)
{
	FUNC0(ut_subsystem_shutdown);

#ifndef ACPI_ASL_COMPILER

	/* Close the acpi_event Handling */

	FUNC1();
#endif

	/* Close the Namespace */

	FUNC2();

	/* Delete the ACPI tables */

	FUNC3();

	/* Close the globals */

	FUNC5();

	/* Purge the local caches */

	(void)FUNC4();
	return_VOID;
}
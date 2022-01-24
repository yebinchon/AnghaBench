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
 int /*<<< orphan*/  acpi_gbl_all_methods_serialized ; 
 int /*<<< orphan*/  ex_relinquish_interpreter ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC2(void)
{
	FUNC0(ex_relinquish_interpreter);

	/*
	 * If the global serialized flag is set, do not release the interpreter.
	 * This forces the interpreter to be single threaded.
	 */
	if (!acpi_gbl_all_methods_serialized) {
		FUNC1();
	}

	return_VOID;
}
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
typedef  size_t u32 ;
struct acpi_walk_state {size_t num_operands; int /*<<< orphan*/ * operands; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  ds_resolve_operands ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(struct acpi_walk_state *walk_state)
{
	u32 i;
	acpi_status status = AE_OK;

	FUNC1(ds_resolve_operands, walk_state);

	/*
	 * Attempt to resolve each of the valid operands
	 * Method arguments are passed by reference, not by value.  This means
	 * that the actual objects are passed, not copies of the objects.
	 */
	for (i = 0; i < walk_state->num_operands; i++) {
		status =
		    FUNC2(&walk_state->operands[i],
					     walk_state);
		if (FUNC0(status)) {
			break;
		}
	}

	FUNC3(status);
}
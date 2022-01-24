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
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef  union acpi_generic_state {int dummy; } acpi_generic_state ;
typedef  int /*<<< orphan*/  u16 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 union acpi_generic_state* FUNC1 (union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_generic_state**,union acpi_generic_state*) ; 

acpi_status
FUNC3(union acpi_operand_object *object,
				     u16 action,
				     union acpi_generic_state **state_list)
{
	union acpi_generic_state *state;

	FUNC0();

	/* Ignore null objects; these are expected */

	if (!object) {
		return (AE_OK);
	}

	state = FUNC1(object, action);
	if (!state) {
		return (AE_NO_MEMORY);
	}

	FUNC2(state_list, state);
	return (AE_OK);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_4__ {int num_packages; int /*<<< orphan*/  index; void* dest_object; union acpi_operand_object* source_object; } ;
struct TYPE_3__ {int /*<<< orphan*/  descriptor_type; } ;
union acpi_generic_state {TYPE_2__ pkg; TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*) ; 
 union acpi_generic_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (union acpi_generic_state*) ; 
 int /*<<< orphan*/  ut_create_pkg_state ; 

union acpi_generic_state *FUNC3(void *internal_object,
						   void *external_object,
						   u16 index)
{
	union acpi_generic_state *state;

	FUNC0(ut_create_pkg_state, internal_object);

	/* Create the generic state object */

	state = FUNC1();
	if (!state) {
		FUNC2(NULL);
	}

	/* Init fields specific to the update struct */

	state->common.descriptor_type = ACPI_DESC_TYPE_STATE_PACKAGE;
	state->pkg.source_object = (union acpi_operand_object *)internal_object;
	state->pkg.dest_object = external_object;
	state->pkg.index = index;
	state->pkg.num_packages = 1;

	FUNC2(state);
}
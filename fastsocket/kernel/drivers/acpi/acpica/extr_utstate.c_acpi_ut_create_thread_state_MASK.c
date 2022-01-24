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
struct TYPE_4__ {scalar_t__ thread_id; } ;
struct TYPE_3__ {int /*<<< orphan*/  descriptor_type; } ;
union acpi_generic_state {TYPE_2__ thread; TYPE_1__ common; } ;
struct acpi_thread_state {int dummy; } ;
typedef  scalar_t__ acpi_thread_id ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DESC_TYPE_STATE_THREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 scalar_t__ FUNC2 () ; 
 union acpi_generic_state* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_thread_state*) ; 
 int /*<<< orphan*/  ut_create_thread_state ; 

struct acpi_thread_state *FUNC5(void)
{
	union acpi_generic_state *state;

	FUNC1(ut_create_thread_state);

	/* Create the generic state object */

	state = FUNC3();
	if (!state) {
		FUNC4(NULL);
	}

	/* Init fields specific to the update struct */

	state->common.descriptor_type = ACPI_DESC_TYPE_STATE_THREAD;
	state->thread.thread_id = FUNC2();

	/* Check for invalid thread ID - zero is very bad, it will break things */

	if (!state->thread.thread_id) {
		FUNC0((AE_INFO, "Invalid zero ID from AcpiOsGetThreadId"));
		state->thread.thread_id = (acpi_thread_id) 1;
	}

	FUNC4((struct acpi_thread_state *)state);
}
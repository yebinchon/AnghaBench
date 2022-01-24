#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct acpi_gpe_xrupt_info {scalar_t__ interrupt_number; TYPE_1__* previous; TYPE_2__* next; int /*<<< orphan*/ * gpe_block_list_head; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;
struct TYPE_6__ {scalar_t__ sci_interrupt; } ;
struct TYPE_5__ {TYPE_1__* previous; } ;
struct TYPE_4__ {TYPE_2__* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_gpe_xrupt_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_ev_gpe_xrupt_handler ; 
 TYPE_3__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 TYPE_2__* acpi_gbl_gpe_xrupt_list_head ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_delete_gpe_xrupt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC7(struct acpi_gpe_xrupt_info *gpe_xrupt)
{
	acpi_status status;
	acpi_cpu_flags flags;

	FUNC2(ev_delete_gpe_xrupt);

	/* We never want to remove the SCI interrupt handler */

	if (gpe_xrupt->interrupt_number == acpi_gbl_FADT.sci_interrupt) {
		gpe_xrupt->gpe_block_list_head = NULL;
		FUNC6(AE_OK);
	}

	/* Disable this interrupt */

	status =
	    FUNC5(gpe_xrupt->interrupt_number,
					     acpi_ev_gpe_xrupt_handler);
	if (FUNC0(status)) {
		FUNC6(status);
	}

	/* Unlink the interrupt block with lock */

	flags = FUNC3(acpi_gbl_gpe_lock);
	if (gpe_xrupt->previous) {
		gpe_xrupt->previous->next = gpe_xrupt->next;
	} else {
		/* No previous, update list head */

		acpi_gbl_gpe_xrupt_list_head = gpe_xrupt->next;
	}

	if (gpe_xrupt->next) {
		gpe_xrupt->next->previous = gpe_xrupt->previous;
	}
	FUNC4(acpi_gbl_gpe_lock, flags);

	/* Free the block */

	FUNC1(gpe_xrupt);
	FUNC6(AE_OK);
}
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
typedef  int u8 ;
typedef  size_t u32 ;
struct acpi_gpe_xrupt_info {struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct acpi_gpe_register_info {scalar_t__ base_gpe_number; int /*<<< orphan*/  enable_address; int /*<<< orphan*/  status_address; } ;
struct acpi_gpe_block_info {size_t register_count; struct acpi_gpe_block_info* next; int /*<<< orphan*/ * event_info; struct acpi_gpe_register_info* register_info; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  size_t acpi_size ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INTERRUPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t ACPI_GPE_REGISTER_WIDTH ; 
 size_t ACPI_INTERRUPT_NOT_HANDLED ; 
 size_t FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 int /*<<< orphan*/  FUNC4 (size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_gpe_detect ; 

u32 FUNC7(struct acpi_gpe_xrupt_info * gpe_xrupt_list)
{
	acpi_status status;
	struct acpi_gpe_block_info *gpe_block;
	struct acpi_gpe_register_info *gpe_register_info;
	u32 int_status = ACPI_INTERRUPT_NOT_HANDLED;
	u8 enabled_status_byte;
	u32 status_reg;
	u32 enable_reg;
	acpi_cpu_flags flags;
	u32 i;
	u32 j;

	FUNC2(ev_gpe_detect);

	/* Check for the case where there are no GPEs */

	if (!gpe_xrupt_list) {
		return (int_status);
	}

	/*
	 * We need to obtain the GPE lock for both the data structs and registers
	 * Note: Not necessary to obtain the hardware lock, since the GPE
	 * registers are owned by the gpe_lock.
	 */
	flags = FUNC5(acpi_gbl_gpe_lock);

	/* Examine all GPE blocks attached to this interrupt level */

	gpe_block = gpe_xrupt_list->gpe_block_list_head;
	while (gpe_block) {
		/*
		 * Read all of the 8-bit GPE status and enable registers in this GPE
		 * block, saving all of them. Find all currently active GP events.
		 */
		for (i = 0; i < gpe_block->register_count; i++) {

			/* Get the next status/enable pair */

			gpe_register_info = &gpe_block->register_info[i];

			/* Read the Status Register */

			status =
			    FUNC4(&status_reg,
					 &gpe_register_info->status_address);
			if (FUNC1(status)) {
				goto unlock_and_exit;
			}

			/* Read the Enable Register */

			status =
			    FUNC4(&enable_reg,
					 &gpe_register_info->enable_address);
			if (FUNC1(status)) {
				goto unlock_and_exit;
			}

			FUNC0((ACPI_DB_INTERRUPTS,
					  "Read GPE Register at GPE%X: Status=%02X, Enable=%02X\n",
					  gpe_register_info->base_gpe_number,
					  status_reg, enable_reg));

			/* Check if there is anything active at all in this register */

			enabled_status_byte = (u8) (status_reg & enable_reg);
			if (!enabled_status_byte) {

				/* No active GPEs in this register, move on */

				continue;
			}

			/* Now look at the individual GPEs in this byte register */

			for (j = 0; j < ACPI_GPE_REGISTER_WIDTH; j++) {

				/* Examine one GPE bit */

				if (enabled_status_byte & (1 << j)) {
					/*
					 * Found an active GPE. Dispatch the event to a handler
					 * or method.
					 */
					int_status |=
					    FUNC3(&gpe_block->
						event_info[((acpi_size) i * ACPI_GPE_REGISTER_WIDTH) + j], j + gpe_register_info->base_gpe_number);
				}
			}
		}

		gpe_block = gpe_block->next;
	}

      unlock_and_exit:

	FUNC6(acpi_gbl_gpe_lock, flags);
	return (int_status);
}
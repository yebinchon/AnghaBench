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
struct acpi_gpe_xrupt_info {struct acpi_gpe_xrupt_info* next; struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct acpi_gpe_block_info {struct acpi_gpe_block_info* next; } ;
typedef  scalar_t__ acpi_status ;
typedef  scalar_t__ (* acpi_gpe_callback ) (struct acpi_gpe_xrupt_info*,struct acpi_gpe_block_info*,void*) ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ AE_CTRL_END ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 struct acpi_gpe_xrupt_info* acpi_gbl_gpe_xrupt_list_head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_walk_gpe_list ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

acpi_status
FUNC5(acpi_gpe_callback gpe_walk_callback, void *context)
{
	struct acpi_gpe_block_info *gpe_block;
	struct acpi_gpe_xrupt_info *gpe_xrupt_info;
	acpi_status status = AE_OK;
	acpi_cpu_flags flags;

	FUNC1(ev_walk_gpe_list);

	flags = FUNC2(acpi_gbl_gpe_lock);

	/* Walk the interrupt level descriptor list */

	gpe_xrupt_info = acpi_gbl_gpe_xrupt_list_head;
	while (gpe_xrupt_info) {

		/* Walk all Gpe Blocks attached to this interrupt level */

		gpe_block = gpe_xrupt_info->gpe_block_list_head;
		while (gpe_block) {

			/* One callback per GPE block */

			status =
			    gpe_walk_callback(gpe_xrupt_info, gpe_block,
					      context);
			if (FUNC0(status)) {
				if (status == AE_CTRL_END) {	/* Callback abort */
					status = AE_OK;
				}
				goto unlock_and_exit;
			}

			gpe_block = gpe_block->next;
		}

		gpe_xrupt_info = gpe_xrupt_info->next;
	}

      unlock_and_exit:
	FUNC3(acpi_gbl_gpe_lock, flags);
	FUNC4(status);
}
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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_gpe_xrupt_info {struct acpi_gpe_block_info* gpe_block_list_head; } ;
struct acpi_gpe_block_info {struct acpi_gpe_xrupt_info* xrupt_block; struct acpi_gpe_block_info* previous; struct acpi_gpe_block_info* next; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_EVENTS ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 struct acpi_gpe_xrupt_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_install_gpe_block ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static acpi_status
FUNC8(struct acpi_gpe_block_info *gpe_block,
			  u32 interrupt_number)
{
	struct acpi_gpe_block_info *next_gpe_block;
	struct acpi_gpe_xrupt_info *gpe_xrupt_block;
	acpi_status status;
	acpi_cpu_flags flags;

	FUNC1(ev_install_gpe_block);

	status = FUNC5(ACPI_MTX_EVENTS);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	gpe_xrupt_block = FUNC2(interrupt_number);
	if (!gpe_xrupt_block) {
		status = AE_NO_MEMORY;
		goto unlock_and_exit;
	}

	/* Install the new block at the end of the list with lock */

	flags = FUNC3(acpi_gbl_gpe_lock);
	if (gpe_xrupt_block->gpe_block_list_head) {
		next_gpe_block = gpe_xrupt_block->gpe_block_list_head;
		while (next_gpe_block->next) {
			next_gpe_block = next_gpe_block->next;
		}

		next_gpe_block->next = gpe_block;
		gpe_block->previous = next_gpe_block;
	} else {
		gpe_xrupt_block->gpe_block_list_head = gpe_block;
	}

	gpe_block->xrupt_block = gpe_xrupt_block;
	FUNC4(acpi_gbl_gpe_lock, flags);

      unlock_and_exit:
	status = FUNC6(ACPI_MTX_EVENTS);
	FUNC7(status);
}
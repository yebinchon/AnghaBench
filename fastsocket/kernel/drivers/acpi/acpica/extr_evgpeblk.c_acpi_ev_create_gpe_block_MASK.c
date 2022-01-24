#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  ascii; } ;
struct acpi_namespace_node {TYPE_1__ name; } ;
struct acpi_gpe_block_info {int register_count; int block_base_number; int /*<<< orphan*/  block_address; struct acpi_namespace_node* node; } ;
struct acpi_generic_address {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 struct acpi_gpe_block_info* FUNC0 (int) ; 
 int /*<<< orphan*/  ACPI_DB_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_gpe_block_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int ACPI_GPE_REGISTER_WIDTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct acpi_generic_address*,int) ; 
 int /*<<< orphan*/  ACPI_NS_WALK_NO_UNLOCK ; 
 int /*<<< orphan*/  ACPI_TYPE_METHOD ; 
 int /*<<< orphan*/  ACPI_UINT32_MAX ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int acpi_current_gpe_count ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_gpe_block_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_gpe_block_info*,int) ; 
 int /*<<< orphan*/  acpi_ev_save_method_info ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct acpi_namespace_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_gpe_block_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_create_gpe_block ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC10(struct acpi_namespace_node *gpe_device,
			 struct acpi_generic_address *gpe_block_address,
			 u32 register_count,
			 u8 gpe_block_base_number,
			 u32 interrupt_number,
			 struct acpi_gpe_block_info **return_gpe_block)
{
	acpi_status status;
	struct acpi_gpe_block_info *gpe_block;

	FUNC4(ev_create_gpe_block);

	if (!register_count) {
		FUNC9(AE_OK);
	}

	/* Allocate a new GPE block */

	gpe_block = FUNC0(sizeof(struct acpi_gpe_block_info));
	if (!gpe_block) {
		FUNC9(AE_NO_MEMORY);
	}

	/* Initialize the new GPE block */

	gpe_block->node = gpe_device;
	gpe_block->register_count = register_count;
	gpe_block->block_base_number = gpe_block_base_number;

	FUNC5(&gpe_block->block_address, gpe_block_address,
		    sizeof(struct acpi_generic_address));

	/*
	 * Create the register_info and event_info sub-structures
	 * Note: disables and clears all GPEs in the block
	 */
	status = FUNC6(gpe_block);
	if (FUNC2(status)) {
		FUNC3(gpe_block);
		FUNC9(status);
	}

	/* Install the new block in the global lists */

	status = FUNC7(gpe_block, interrupt_number);
	if (FUNC2(status)) {
		FUNC3(gpe_block);
		FUNC9(status);
	}

	/* Find all GPE methods (_Lxx, _Exx) for this block */

	status = FUNC8(ACPI_TYPE_METHOD, gpe_device,
					ACPI_UINT32_MAX, ACPI_NS_WALK_NO_UNLOCK,
					acpi_ev_save_method_info, gpe_block,
					NULL);

	/* Return the new block */

	if (return_gpe_block) {
		(*return_gpe_block) = gpe_block;
	}

	FUNC1((ACPI_DB_INIT,
			  "GPE %02X to %02X [%4.4s] %u regs on int 0x%X\n",
			  (u32) gpe_block->block_base_number,
			  (u32) (gpe_block->block_base_number +
				 ((gpe_block->register_count *
				   ACPI_GPE_REGISTER_WIDTH) - 1)),
			  gpe_device->name.ascii, gpe_block->register_count,
			  interrupt_number));

	/* Update global count of currently available GPEs */

	acpi_current_gpe_count += register_count * ACPI_GPE_REGISTER_WIDTH;
	FUNC9(AE_OK);
}
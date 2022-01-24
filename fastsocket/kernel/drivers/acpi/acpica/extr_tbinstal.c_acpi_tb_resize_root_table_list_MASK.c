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
struct acpi_table_desc {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_size ;
struct TYPE_2__ {int flags; scalar_t__ size; struct acpi_table_desc* tables; } ;

/* Variables and functions */
 struct acpi_table_desc* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_table_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_desc*,struct acpi_table_desc*,int) ; 
 int ACPI_ROOT_ALLOW_RESIZE ; 
 int ACPI_ROOT_ORIGIN_ALLOCATED ; 
 int /*<<< orphan*/  ACPI_ROOT_TABLE_SIZE_INCREMENT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 TYPE_1__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_resize_root_table_list ; 

acpi_status FUNC6(void)
{
	struct acpi_table_desc *tables;

	FUNC3(tb_resize_root_table_list);

	/* allow_resize flag is a parameter to acpi_initialize_tables */

	if (!(acpi_gbl_root_table_list.flags & ACPI_ROOT_ALLOW_RESIZE)) {
		FUNC1((AE_INFO,
			    "Resize of Root Table Array is not allowed"));
		FUNC5(AE_SUPPORT);
	}

	/* Increase the Table Array size */

	tables = FUNC0(((acpi_size) acpi_gbl_root_table_list.
				       size +
				       ACPI_ROOT_TABLE_SIZE_INCREMENT) *
				      sizeof(struct acpi_table_desc));
	if (!tables) {
		FUNC1((AE_INFO,
			    "Could not allocate new root table array"));
		FUNC5(AE_NO_MEMORY);
	}

	/* Copy and free the previous table array */

	if (acpi_gbl_root_table_list.tables) {
		FUNC4(tables, acpi_gbl_root_table_list.tables,
			    (acpi_size) acpi_gbl_root_table_list.size *
			    sizeof(struct acpi_table_desc));

		if (acpi_gbl_root_table_list.flags & ACPI_ROOT_ORIGIN_ALLOCATED) {
			FUNC2(acpi_gbl_root_table_list.tables);
		}
	}

	acpi_gbl_root_table_list.tables = tables;
	acpi_gbl_root_table_list.size += ACPI_ROOT_TABLE_SIZE_INCREMENT;
	acpi_gbl_root_table_list.flags |= (u8) ACPI_ROOT_ORIGIN_ALLOCATED;

	FUNC5(AE_OK);
}
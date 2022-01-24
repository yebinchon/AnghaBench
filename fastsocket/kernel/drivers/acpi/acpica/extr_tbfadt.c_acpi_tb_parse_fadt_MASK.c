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
typedef  size_t u32 ;
struct acpi_table_header {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_physical_address ;
struct TYPE_6__ {scalar_t__ Xfacs; scalar_t__ Xdsdt; } ;
struct TYPE_5__ {TYPE_1__* tables; } ;
struct TYPE_4__ {size_t length; int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  ACPI_SIG_FACS ; 
 int /*<<< orphan*/  ACPI_TABLE_INDEX_DSDT ; 
 int /*<<< orphan*/  ACPI_TABLE_INDEX_FACS ; 
 TYPE_3__ acpi_gbl_FADT ; 
 TYPE_2__ acpi_gbl_root_table_list ; 
 struct acpi_table_header* FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_table_header*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_table_header*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_header*,size_t) ; 

void FUNC5(u32 table_index)
{
	u32 length;
	struct acpi_table_header *table;

	/*
	 * The FADT has multiple versions with different lengths,
	 * and it contains pointers to both the DSDT and FACS tables.
	 *
	 * Get a local copy of the FADT and convert it to a common format
	 * Map entire FADT, assumed to be smaller than one page.
	 */
	length = acpi_gbl_root_table_list.tables[table_index].length;

	table =
	    FUNC0(acpi_gbl_root_table_list.tables[table_index].
			       address, length);
	if (!table) {
		return;
	}

	/*
	 * Validate the FADT checksum before we copy the table. Ignore
	 * checksum error as we want to try to get the DSDT and FACS.
	 */
	(void)FUNC4(table, length);

	/* Create a local copy of the FADT in common ACPI 2.0+ format */

	FUNC2(table, length);

	/* All done with the real FADT, unmap it */

	FUNC1(table, length);

	/* Obtain the DSDT and FACS tables via their addresses within the FADT */

	FUNC3((acpi_physical_address) acpi_gbl_FADT.Xdsdt,
			      ACPI_SIG_DSDT, ACPI_TABLE_INDEX_DSDT);

	FUNC3((acpi_physical_address) acpi_gbl_FADT.Xfacs,
			      ACPI_SIG_FACS, ACPI_TABLE_INDEX_FACS);
}
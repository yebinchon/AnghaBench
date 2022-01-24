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
struct acpi_table_header {int /*<<< orphan*/  signature; int /*<<< orphan*/  oem_table_id; int /*<<< orphan*/  oem_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_6__ {size_t count; TYPE_2__* tables; } ;
struct TYPE_5__ {TYPE_1__* pointer; int /*<<< orphan*/  signature; } ;
struct TYPE_4__ {int /*<<< orphan*/ * oem_table_id; int /*<<< orphan*/ * oem_id; int /*<<< orphan*/ * signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_TABLES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_table_header*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ACPI_NAME_SIZE ; 
 int /*<<< orphan*/  ACPI_OEM_ID_SIZE ; 
 int /*<<< orphan*/  ACPI_OEM_TABLE_ID_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_3__ acpi_gbl_root_table_list ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_find_table ; 

acpi_status
FUNC8(char *signature,
		   char *oem_id, char *oem_table_id, u32 *table_index)
{
	u32 i;
	acpi_status status;
	struct acpi_table_header header;

	FUNC2(tb_find_table);

	/* Normalize the input strings */

	FUNC4(&header, 0, sizeof(struct acpi_table_header));
	FUNC5(header.signature, signature, ACPI_NAME_SIZE);
	FUNC5(header.oem_id, oem_id, ACPI_OEM_ID_SIZE);
	FUNC5(header.oem_table_id, oem_table_id, ACPI_OEM_TABLE_ID_SIZE);

	/* Search for the table */

	for (i = 0; i < acpi_gbl_root_table_list.count; ++i) {
		if (FUNC3(&(acpi_gbl_root_table_list.tables[i].signature),
				header.signature, ACPI_NAME_SIZE)) {

			/* Not the requested table */

			continue;
		}

		/* Table with matching signature has been found */

		if (!acpi_gbl_root_table_list.tables[i].pointer) {

			/* Table is not currently mapped, map it */

			status =
			    FUNC6(&acpi_gbl_root_table_list.
						 tables[i]);
			if (FUNC1(status)) {
				FUNC7(status);
			}

			if (!acpi_gbl_root_table_list.tables[i].pointer) {
				continue;
			}
		}

		/* Check for table match on all IDs */

		if (!FUNC3
		    (acpi_gbl_root_table_list.tables[i].pointer->signature,
		     header.signature, ACPI_NAME_SIZE) && (!oem_id[0]
							   ||
							   !FUNC3
							   (acpi_gbl_root_table_list.
							    tables[i].pointer->
							    oem_id,
							    header.oem_id,
							    ACPI_OEM_ID_SIZE))
		    && (!oem_table_id[0]
			|| !FUNC3(acpi_gbl_root_table_list.tables[i].
					pointer->oem_table_id,
					header.oem_table_id,
					ACPI_OEM_TABLE_ID_SIZE))) {
			*table_index = i;

			FUNC0((ACPI_DB_TABLES,
					  "Found table [%4.4s]\n",
					  header.signature));
			FUNC7(AE_OK);
		}
	}

	FUNC7(AE_NOT_FOUND);
}
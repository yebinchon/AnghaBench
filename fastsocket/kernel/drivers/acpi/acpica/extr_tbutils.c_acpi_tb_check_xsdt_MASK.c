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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct acpi_table_header {int length; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct acpi_table_header*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  AE_INVALID_TABLE_LENGTH ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_NULL_ENTRY ; 
 int /*<<< orphan*/  AE_OK ; 
 struct acpi_table_header* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_table_header*,int) ; 
 int table_entry ; 
 int u8 ; 

__attribute__((used)) static acpi_status
FUNC4(acpi_physical_address address)
{
	struct acpi_table_header *table;
	u32 length;
	u64 xsdt_entry_address;
	u8 *table_entry;
	u32 table_count;
	int i;

	table = FUNC2(address, sizeof(struct acpi_table_header));
	if (!table)
		return AE_NO_MEMORY;

	length = table->length;
	FUNC3(table, sizeof(struct acpi_table_header));
	if (length < sizeof(struct acpi_table_header))
		return AE_INVALID_TABLE_LENGTH;

	table = FUNC2(address, length);
	if (!table)
		return AE_NO_MEMORY;

	/* Calculate the number of tables described in XSDT */
	table_count =
		(u32) ((table->length -
		sizeof(struct acpi_table_header)) / sizeof(u64));
	table_entry =
		FUNC0(u8, table) + sizeof(struct acpi_table_header);
	for (i = 0; i < table_count; i++) {
		FUNC1(&xsdt_entry_address, table_entry);
		if (!xsdt_entry_address) {
			/* XSDT has NULL entry */
			break;
		}
		table_entry += sizeof(u64);
	}
	FUNC3(table, length);

	if (i < table_count)
		return AE_NULL_ENTRY;
	else
		return AE_OK;
}
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
typedef  int u32 ;
struct acpi_table_header {int /*<<< orphan*/  revision; } ;
struct acpi_table_fadt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct acpi_table_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct acpi_table_header *table, u32 length)
{
	/*
	 * Check if the FADT is larger than the largest table that we expect
	 * (the ACPI 2.0/3.0 version). If so, truncate the table, and issue
	 * a warning.
	 */
	if (length > sizeof(struct acpi_table_fadt)) {
		FUNC3((AE_INFO,
			      "FADT (revision %u) is longer than ACPI 2.0 version, "
			      "truncating length 0x%X to 0x%X",
			      table->revision, length,
			      (u32)sizeof(struct acpi_table_fadt)));
	}

	/* Clear the entire local FADT */

	FUNC1(&acpi_gbl_FADT, 0, sizeof(struct acpi_table_fadt));

	/* Copy the original FADT, up to sizeof (struct acpi_table_fadt) */

	FUNC0(&acpi_gbl_FADT, table,
		    FUNC2(length, sizeof(struct acpi_table_fadt)));

	/* Convert the local copy of the FADT to the common internal format */

	FUNC4();

	/* Validate FADT values now, before we make any changes */

	FUNC6();

	/* Initialize the global ACPI register structures */

	FUNC5();
}
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
typedef  int /*<<< orphan*/  u8 ;
struct acpi_table_header {int /*<<< orphan*/  signature; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_DSDT ; 
 int /*<<< orphan*/  ACPI_SIG_PSDT ; 
 int /*<<< orphan*/  ACPI_SIG_SSDT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 

u8 FUNC1(struct acpi_table_header *table)
{

	/* These are the only tables that contain executable AML */

	if (FUNC0(table->signature, ACPI_SIG_DSDT) ||
	    FUNC0(table->signature, ACPI_SIG_PSDT) ||
	    FUNC0(table->signature, ACPI_SIG_SSDT)) {
		return (TRUE);
	}

	return (FALSE);
}
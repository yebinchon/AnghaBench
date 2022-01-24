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
struct acpi_table_desc {int flags; int /*<<< orphan*/  length; scalar_t__ pointer; int /*<<< orphan*/  signature; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SIG_FACS ; 
 int ACPI_TABLE_ORIGIN_MAPPED ; 
 int ACPI_TABLE_ORIGIN_MASK ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tb_verify_table ; 

acpi_status FUNC5(struct acpi_table_desc *table_desc)
{
	acpi_status status = AE_OK;

	FUNC1(tb_verify_table);

	/* Map the table if necessary */

	if (!table_desc->pointer) {
		if ((table_desc->flags & ACPI_TABLE_ORIGIN_MASK) ==
		    ACPI_TABLE_ORIGIN_MAPPED) {
			table_desc->pointer =
			    FUNC2(table_desc->address,
					       table_desc->length);
		}
		if (!table_desc->pointer) {
			FUNC4(AE_NO_MEMORY);
		}
	}

	/* FACS is the odd table, has no standard ACPI header and no checksum */

	if (!FUNC0(&table_desc->signature, ACPI_SIG_FACS)) {

		/* Always calculate checksum, ignore bad checksum if requested */

		status =
		    FUNC3(table_desc->pointer,
					    table_desc->length);
	}

	FUNC4(status);
}
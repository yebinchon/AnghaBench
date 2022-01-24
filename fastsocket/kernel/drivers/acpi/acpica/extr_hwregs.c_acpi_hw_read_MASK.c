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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct acpi_generic_address {scalar_t__ space_id; int /*<<< orphan*/  bit_width; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;
typedef  int /*<<< orphan*/  acpi_io_address ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  ACPI_DB_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_generic_address*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  hw_read ; 

acpi_status FUNC8(u32 *value, struct acpi_generic_address *reg)
{
	u64 address;
	u64 value64;
	acpi_status status;

	FUNC3(hw_read);

	/* Validate contents of the GAS register */

	status = FUNC5(reg, 32, &address);
	if (FUNC1(status)) {
		return (status);
	}

	/* Initialize entire 32-bit return value to zero */

	*value = 0;

	/*
	 * Two address spaces supported: Memory or IO. PCI_Config is
	 * not supported here because the GAS structure is insufficient
	 */
	if (reg->space_id == ACPI_ADR_SPACE_SYSTEM_MEMORY) {
		status = FUNC6((acpi_physical_address)
					     address, &value64, reg->bit_width);

		*value = (u32)value64;
	} else {		/* ACPI_ADR_SPACE_SYSTEM_IO, validated earlier */

		status = FUNC4((acpi_io_address)
					   address, value, reg->bit_width);
	}

	FUNC0((ACPI_DB_IO,
			  "Read:  %8.8X width %2d from %8.8X%8.8X (%s)\n",
			  *value, reg->bit_width, FUNC2(address),
			  FUNC7(reg->space_id)));

	return (status);
}
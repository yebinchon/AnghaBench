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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;
typedef  int /*<<< orphan*/  acpi_integer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ex_cmos_space_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC2(u32 function,
			   acpi_physical_address address,
			   u32 bit_width,
			   acpi_integer * value,
			   void *handler_context, void *region_context)
{
	acpi_status status = AE_OK;

	FUNC0(ex_cmos_space_handler);

	FUNC1(status);
}
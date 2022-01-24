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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long long ACPI_STA_DEVICE_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(acpi_handle handle)
{
	acpi_handle temp;
	acpi_status status;
	unsigned long long sta;


	status = FUNC2(handle, "_STA", &temp);
	if (FUNC0(status))
		return 1;	/* _STA not found, assume device present */

	status = FUNC1(handle, "_STA", NULL, &sta);
	if (FUNC0(status))
		return 0;	/* Firmware error */

	return ((sta & ACPI_STA_DEVICE_PRESENT) == ACPI_STA_DEVICE_PRESENT);
}
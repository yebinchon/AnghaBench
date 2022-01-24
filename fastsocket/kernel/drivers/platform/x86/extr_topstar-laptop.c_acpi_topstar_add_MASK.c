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
struct topstar_hkey {int dummy; } ;
struct acpi_device {struct topstar_hkey* driver_data; } ;

/* Variables and functions */
 char* ACPI_TOPSTAR_CLASS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 (struct acpi_device*,int) ; 
 scalar_t__ FUNC3 (struct topstar_hkey*) ; 
 int /*<<< orphan*/  FUNC4 (struct topstar_hkey*) ; 
 struct topstar_hkey* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(struct acpi_device *device)
{
	struct topstar_hkey *tps_hkey;

	tps_hkey = FUNC5(sizeof(struct topstar_hkey), GFP_KERNEL);
	if (!tps_hkey)
		return -ENOMEM;

	FUNC6(FUNC1(device), "Topstar TPSACPI");
	FUNC6(FUNC0(device), ACPI_TOPSTAR_CLASS);

	if (FUNC2(device, true))
		goto add_err;

	if (FUNC3(tps_hkey))
		goto add_err;

	device->driver_data = tps_hkey;
	return 0;

add_err:
	FUNC4(tps_hkey);
	return -ENODEV;
}
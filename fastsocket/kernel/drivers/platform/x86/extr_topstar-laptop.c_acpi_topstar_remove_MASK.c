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
struct topstar_hkey {int /*<<< orphan*/  inputdev; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct topstar_hkey* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct topstar_hkey*) ; 

__attribute__((used)) static int FUNC4(struct acpi_device *device, int type)
{
	struct topstar_hkey *tps_hkey = FUNC0(device);

	FUNC1(device, false);

	FUNC2(tps_hkey->inputdev);
	FUNC3(tps_hkey);

	return 0;
}
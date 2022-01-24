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
struct acpi_battery {int /*<<< orphan*/  quirks; scalar_t__ power_unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  QUIRK_SIGNED16_CURRENT ; 
 scalar_t__ FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(struct acpi_battery *battery)
{
	battery->quirks = 0;
	if (FUNC0("Acer") && battery->power_unit) {
		battery->quirks |= QUIRK_SIGNED16_CURRENT;
	}
}
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
struct acpi_device {int dummy; } ;
struct acpi_button {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ACPI_BUTTON_TYPE_LID ; 
 struct acpi_button* FUNC0 (struct acpi_device*) ; 
 int FUNC1 (struct acpi_device*) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *device)
{
	struct acpi_button *button = FUNC0(device);

	if (button->type == ACPI_BUTTON_TYPE_LID)
		return FUNC1(device);
	return 0;
}
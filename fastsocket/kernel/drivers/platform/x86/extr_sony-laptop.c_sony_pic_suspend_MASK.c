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
typedef  int /*<<< orphan*/  pm_message_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (struct acpi_device*) ; 

__attribute__((used)) static int FUNC1(struct acpi_device *device, pm_message_t state)
{
	if (FUNC0(device))
		return -ENXIO;
	return 0;
}
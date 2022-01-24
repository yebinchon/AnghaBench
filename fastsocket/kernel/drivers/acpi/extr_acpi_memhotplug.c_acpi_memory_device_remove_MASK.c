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
struct acpi_memory_device {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct acpi_memory_device* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_memory_device*) ; 

__attribute__((used)) static int FUNC2(struct acpi_device *device, int type)
{
	struct acpi_memory_device *mem_device = NULL;


	if (!device || !FUNC0(device))
		return -EINVAL;

	mem_device = FUNC0(device);
	FUNC1(mem_device);

	return 0;
}
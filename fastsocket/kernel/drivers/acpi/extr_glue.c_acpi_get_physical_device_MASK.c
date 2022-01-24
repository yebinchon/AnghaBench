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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  acpi_glue_data_handler ; 
 struct device* FUNC2 (struct device*) ; 

struct device *FUNC3(acpi_handle handle)
{
	acpi_status status;
	struct device *dev;

	status = FUNC1(handle, acpi_glue_data_handler, (void **)&dev);
	if (FUNC0(status))
		return FUNC2(dev);
	return NULL;
}
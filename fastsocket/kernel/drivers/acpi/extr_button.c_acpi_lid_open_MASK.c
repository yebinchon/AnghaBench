#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 TYPE_1__* lid_device ; 

int FUNC2(void)
{
	acpi_status status;
	unsigned long long state;

	if (!lid_device)
		return -ENODEV;

	status = FUNC1(lid_device->handle, "_LID", NULL,
				       &state);
	if (FUNC0(status))
		return -ENODEV;

	return !!state;
}
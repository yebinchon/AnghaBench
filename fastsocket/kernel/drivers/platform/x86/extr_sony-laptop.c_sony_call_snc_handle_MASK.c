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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,int,int*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  sony_nc_acpi_handle ; 

__attribute__((used)) static int FUNC2(int handle, int argument, int *result)
{
	int offset = FUNC1(handle);

	if (offset < 0)
		return -1;

	return FUNC0(sony_nc_acpi_handle, "SN07", offset | argument,
				result);
}
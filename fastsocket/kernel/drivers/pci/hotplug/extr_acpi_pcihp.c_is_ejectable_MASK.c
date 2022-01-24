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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(acpi_handle handle)
{
	acpi_status status;
	acpi_handle tmp;
	unsigned long long removable;
	status = FUNC3(handle, "_ADR", &tmp);
	if (FUNC0(status))
		return 0;
	status = FUNC3(handle, "_EJ0", &tmp);
	if (FUNC1(status))
		return 1;
	status = FUNC2(handle, "_RMV", NULL, &removable);
	if (FUNC1(status) && removable)
		return 1;
	return 0;
}
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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 

__attribute__((used)) static int FUNC2(acpi_handle handle, const char *method, int *val)
{
	acpi_status status;
	unsigned long long result;

	status = FUNC1(handle, (char *)method, NULL, &result);
	if (FUNC0(status)) {
		*val = -1;
		return -1;
	} else {
		*val = result;
		return 0;
	}
}
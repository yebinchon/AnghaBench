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
struct acpi_buffer {int member_0; char* member_1; } ;
typedef  int /*<<< orphan*/  node_name ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_POWER_RESOURCE_STATE_OFF ; 
 int ACPI_POWER_RESOURCE_STATE_ON ; 
 int /*<<< orphan*/  ACPI_SINGLE_NAME ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 

__attribute__((used)) static int FUNC4(acpi_handle handle, int *state)
{
	acpi_status status = AE_OK;
	unsigned long long sta = 0;
	char node_name[5];
	struct acpi_buffer buffer = { sizeof(node_name), node_name };


	if (!handle || !state)
		return -EINVAL;

	status = FUNC2(handle, "_STA", NULL, &sta);
	if (FUNC1(status))
		return -ENODEV;

	*state = (sta & 0x01)?ACPI_POWER_RESOURCE_STATE_ON:
			      ACPI_POWER_RESOURCE_STATE_OFF;

	FUNC3(handle, ACPI_SINGLE_NAME, &buffer);

	FUNC0((ACPI_DB_INFO, "Resource [%s] is %s\n",
			  node_name,
				*state ? "on" : "off"));

	return 0;
}
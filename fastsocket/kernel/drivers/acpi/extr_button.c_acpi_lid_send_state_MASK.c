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
struct acpi_device {int /*<<< orphan*/  handle; } ;
struct acpi_button {int /*<<< orphan*/  input; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int /*<<< orphan*/  SW_LID ; 
 struct acpi_button* FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  acpi_lid_notifier ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned long long,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct acpi_device *device)
{
	struct acpi_button *button = FUNC1(device);
	unsigned long long state;
	acpi_status status;
	int ret;

	status = FUNC2(device->handle, "_LID", NULL, &state);
	if (FUNC0(status))
		return -ENODEV;

	/* input layer checks if event is redundant */
	FUNC4(button->input, SW_LID, !state);
	FUNC5(button->input);

	ret = FUNC3(&acpi_lid_notifier, state, device);
	if (ret == NOTIFY_DONE)
		ret = FUNC3(&acpi_lid_notifier, state,
						   device);
	if (ret == NOTIFY_DONE || ret == NOTIFY_OK) {
		/*
		 * It is also regarded as success if the notifier_chain
		 * returns NOTIFY_OK or NOTIFY_DONE.
		 */
		ret = 0;
	}
	return ret;
}
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
typedef  int u32 ;
struct input_dev {int /*<<< orphan*/  keybit; } ;
struct acpi_device {int dummy; } ;
struct acpi_button {int /*<<< orphan*/  pushed; int /*<<< orphan*/  type; struct input_dev* input; } ;

/* Variables and functions */
#define  ACPI_BUTTON_NOTIFY_STATUS 129 
 int /*<<< orphan*/  ACPI_BUTTON_TYPE_LID ; 
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  ACPI_FIXED_HARDWARE_EVENT 128 
 int KEY_POWER ; 
 int KEY_SLEEP ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,int,int /*<<< orphan*/ ) ; 
 struct acpi_button* FUNC2 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct acpi_device *device, u32 event)
{
	struct acpi_button *button = FUNC2(device);
	struct input_dev *input;

	switch (event) {
	case ACPI_FIXED_HARDWARE_EVENT:
		event = ACPI_BUTTON_NOTIFY_STATUS;
		/* fall through */
	case ACPI_BUTTON_NOTIFY_STATUS:
		input = button->input;
		if (button->type == ACPI_BUTTON_TYPE_LID) {
			FUNC3(device);
		} else {
			int keycode = FUNC6(KEY_SLEEP, input->keybit) ?
						KEY_SLEEP : KEY_POWER;

			FUNC4(input, keycode, 1);
			FUNC5(input);
			FUNC4(input, keycode, 0);
			FUNC5(input);
		}

		FUNC1(device, event, ++button->pushed);
		break;
	default:
		FUNC0((ACPI_DB_INFO,
				  "Unsupported event [0x%x]\n", event));
		break;
	}
}
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
struct input_dev {int dummy; } ;
struct fujitsu_hotkey_t {int /*<<< orphan*/ * acpi_handle; int /*<<< orphan*/  fifo; scalar_t__ kblamps_registered; scalar_t__ logolamp_registered; struct input_dev* input; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct fujitsu_hotkey_t* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  kblamps_led ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  logolamp_led ; 

__attribute__((used)) static int FUNC5(struct acpi_device *device, int type)
{
	struct fujitsu_hotkey_t *fujitsu_hotkey = FUNC0(device);
	struct input_dev *input = fujitsu_hotkey->input;

#if defined(CONFIG_LEDS_CLASS) || defined(CONFIG_LEDS_CLASS_MODULE)
	if (fujitsu_hotkey->logolamp_registered)
		led_classdev_unregister(&logolamp_led);

	if (fujitsu_hotkey->kblamps_registered)
		led_classdev_unregister(&kblamps_led);
#endif

	FUNC2(input);

	FUNC1(input);

	FUNC3(fujitsu_hotkey->fifo);

	fujitsu_hotkey->acpi_handle = NULL;

	return 0;
}
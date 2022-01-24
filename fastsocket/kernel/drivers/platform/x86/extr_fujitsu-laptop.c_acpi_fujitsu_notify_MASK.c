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
typedef  int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int brightness_level; int /*<<< orphan*/  dev; int /*<<< orphan*/  brightness_changed; struct input_dev* input; } ;

/* Variables and functions */
#define  ACPI_FUJITSU_NOTIFY_CODE1 128 
 int /*<<< orphan*/  ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS ; 
 int /*<<< orphan*/  ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS ; 
 int /*<<< orphan*/  FUJLAPTOP_DBG_TRACE ; 
 int /*<<< orphan*/  FUJLAPTOP_DBG_WARN ; 
 int KEY_BRIGHTNESSDOWN ; 
 int KEY_BRIGHTNESSUP ; 
 int KEY_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int disable_brightness_adjust ; 
 TYPE_1__* fujitsu ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  use_alt_lcd_levels ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void FUNC7(struct acpi_device *device, u32 event)
{
	struct input_dev *input;
	int keycode;
	int oldb, newb;

	input = fujitsu->input;

	switch (event) {
	case ACPI_FUJITSU_NOTIFY_CODE1:
		keycode = 0;
		oldb = fujitsu->brightness_level;
		FUNC1();
		newb = fujitsu->brightness_level;

		FUNC6(FUJLAPTOP_DBG_TRACE,
			    "brightness button event [%i -> %i (%i)]\n",
			    oldb, newb, fujitsu->brightness_changed);

		if (oldb < newb) {
			if (disable_brightness_adjust != 1) {
				if (use_alt_lcd_levels)
					FUNC5(newb);
				else
					FUNC4(newb);
			}
			FUNC0(fujitsu->dev,
				ACPI_VIDEO_NOTIFY_INC_BRIGHTNESS, 0);
			keycode = KEY_BRIGHTNESSUP;
		} else if (oldb > newb) {
			if (disable_brightness_adjust != 1) {
				if (use_alt_lcd_levels)
					FUNC5(newb);
				else
					FUNC4(newb);
			}
			FUNC0(fujitsu->dev,
				ACPI_VIDEO_NOTIFY_DEC_BRIGHTNESS, 0);
			keycode = KEY_BRIGHTNESSDOWN;
		}
		break;
	default:
		keycode = KEY_UNKNOWN;
		FUNC6(FUJLAPTOP_DBG_WARN,
			    "unsupported event [0x%x]\n", event);
		break;
	}

	if (keycode != 0) {
		FUNC2(input, keycode, 1);
		FUNC3(input);
		FUNC2(input, keycode, 0);
		FUNC3(input);
	}
}
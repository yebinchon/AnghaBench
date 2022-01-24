#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct input_dev {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  keycode_r ;
typedef  int /*<<< orphan*/  keycode ;
struct TYPE_4__ {int keycode1; int keycode2; int keycode3; int keycode4; } ;
struct TYPE_3__ {int /*<<< orphan*/  fifo; void* rfkill_state; scalar_t__ rfkill_supported; struct input_dev* input; } ;

/* Variables and functions */
#define  ACPI_FUJITSU_NOTIFY_CODE1 132 
 int /*<<< orphan*/  FUJLAPTOP_DBG_TRACE ; 
 int /*<<< orphan*/  FUJLAPTOP_DBG_WARN ; 
 int /*<<< orphan*/  FUNC_BUTTONS ; 
 int /*<<< orphan*/  FUNC_RFKILL ; 
#define  KEY1_CODE 131 
#define  KEY2_CODE 130 
#define  KEY3_CODE 129 
#define  KEY4_CODE 128 
 int KEY_UNKNOWN ; 
 int /*<<< orphan*/  MAX_HOTKEY_RINGBUFFER_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int,int) ; 
 TYPE_2__* fujitsu ; 
 TYPE_1__* fujitsu_hotkey ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC6(struct acpi_device *device, u32 event)
{
	struct input_dev *input;
	int keycode, keycode_r;
	unsigned int irb = 1;
	int i, status;

	input = fujitsu_hotkey->input;

	if (fujitsu_hotkey->rfkill_supported)
		fujitsu_hotkey->rfkill_state =
			FUNC0(FUNC_RFKILL, 0x4, 0x0, 0x0);

	switch (event) {
	case ACPI_FUJITSU_NOTIFY_CODE1:
		i = 0;
		while ((irb =
			FUNC0(FUNC_BUTTONS, 0x1, 0x0, 0x0)) != 0
				&& (i++) < MAX_HOTKEY_RINGBUFFER_SIZE) {
			switch (irb & 0x4ff) {
			case KEY1_CODE:
				keycode = fujitsu->keycode1;
				break;
			case KEY2_CODE:
				keycode = fujitsu->keycode2;
				break;
			case KEY3_CODE:
				keycode = fujitsu->keycode3;
				break;
			case KEY4_CODE:
				keycode = fujitsu->keycode4;
				break;
			case 0:
				keycode = 0;
				break;
			default:
				FUNC5(FUJLAPTOP_DBG_WARN,
					    "Unknown GIRB result [%x]\n", irb);
				keycode = -1;
				break;
			}
			if (keycode > 0) {
				FUNC5(FUJLAPTOP_DBG_TRACE,
					"Push keycode into ringbuffer [%d]\n",
					keycode);
				status = FUNC4(fujitsu_hotkey->fifo,
						   (unsigned char *)&keycode,
						   sizeof(keycode));
				if (status != sizeof(keycode)) {
					FUNC5(FUJLAPTOP_DBG_WARN,
					    "Could not push keycode [0x%x]\n",
					    keycode);
				} else {
					FUNC1(input, keycode, 1);
					FUNC2(input);
				}
			} else if (keycode == 0) {
				while ((status =
					FUNC3
					(fujitsu_hotkey->fifo, (unsigned char *)
					 &keycode_r,
					 sizeof
					 (keycode_r))) == sizeof(keycode_r)) {
					FUNC1(input, keycode_r, 0);
					FUNC2(input);
					FUNC5(FUJLAPTOP_DBG_TRACE,
					  "Pop keycode from ringbuffer [%d]\n",
					  keycode_r);
				}
			}
		}

		break;
	default:
		keycode = KEY_UNKNOWN;
		FUNC5(FUJLAPTOP_DBG_WARN,
			    "Unsupported event [0x%x]\n", event);
		FUNC1(input, keycode, 1);
		FUNC2(input);
		FUNC1(input, keycode, 0);
		FUNC2(input);
		break;
	}
}
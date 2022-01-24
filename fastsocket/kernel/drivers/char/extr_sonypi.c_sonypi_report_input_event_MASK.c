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
typedef  int u8 ;
struct sonypi_keypress {struct input_dev* dev; int /*<<< orphan*/  key; int /*<<< orphan*/ * member_0; } ;
struct input_dev {int dummy; } ;
typedef  int /*<<< orphan*/  kp ;
struct TYPE_4__ {int /*<<< orphan*/  input_work; int /*<<< orphan*/  input_fifo; struct input_dev* input_key_dev; struct input_dev* input_jog_dev; } ;
struct TYPE_3__ {int sonypiev; int /*<<< orphan*/  inputev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTN_MIDDLE ; 
 int /*<<< orphan*/  REL_WHEEL ; 
#define  SONYPI_EVENT_FNKEY_RELEASED 133 
#define  SONYPI_EVENT_JOGDIAL_DOWN 132 
#define  SONYPI_EVENT_JOGDIAL_DOWN_PRESSED 131 
#define  SONYPI_EVENT_JOGDIAL_PRESSED 130 
#define  SONYPI_EVENT_JOGDIAL_UP 129 
#define  SONYPI_EVENT_JOGDIAL_UP_PRESSED 128 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ sonypi_device ; 
 TYPE_1__* sonypi_inputkeys ; 

__attribute__((used)) static void FUNC5(u8 event)
{
	struct input_dev *jog_dev = sonypi_device.input_jog_dev;
	struct input_dev *key_dev = sonypi_device.input_key_dev;
	struct sonypi_keypress kp = { NULL };
	int i;

	switch (event) {
	case SONYPI_EVENT_JOGDIAL_UP:
	case SONYPI_EVENT_JOGDIAL_UP_PRESSED:
		FUNC1(jog_dev, REL_WHEEL, 1);
		FUNC2(jog_dev);
		break;

	case SONYPI_EVENT_JOGDIAL_DOWN:
	case SONYPI_EVENT_JOGDIAL_DOWN_PRESSED:
		FUNC1(jog_dev, REL_WHEEL, -1);
		FUNC2(jog_dev);
		break;

	case SONYPI_EVENT_JOGDIAL_PRESSED:
		kp.key = BTN_MIDDLE;
		kp.dev = jog_dev;
		break;

	case SONYPI_EVENT_FNKEY_RELEASED:
		/* Nothing, not all VAIOs generate this event */
		break;

	default:
		for (i = 0; sonypi_inputkeys[i].sonypiev; i++)
			if (event == sonypi_inputkeys[i].sonypiev) {
				kp.dev = key_dev;
				kp.key = sonypi_inputkeys[i].inputev;
				break;
			}
		break;
	}

	if (kp.dev) {
		FUNC0(kp.dev, kp.key, 1);
		FUNC2(kp.dev);
		FUNC3(sonypi_device.input_fifo,
			  (unsigned char *)&kp, sizeof(kp));
		FUNC4(&sonypi_device.input_work);
	}
}
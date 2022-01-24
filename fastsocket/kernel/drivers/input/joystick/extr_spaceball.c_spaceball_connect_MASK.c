#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct spaceball {struct input_dev* dev; int /*<<< orphan*/  phys; } ;
struct serio_driver {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct serio {char* phys; int /*<<< orphan*/  dev; TYPE_1__ id; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_5__ {int product; int version; int /*<<< orphan*/  vendor; int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int* keybit; TYPE_3__ dev; TYPE_2__ id; int /*<<< orphan*/  phys; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ABS_RX ; 
 scalar_t__ ABS_X ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTN_0 ; 
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_2 ; 
 int /*<<< orphan*/  BTN_3 ; 
 int /*<<< orphan*/  BTN_4 ; 
 int /*<<< orphan*/  BTN_5 ; 
 int /*<<< orphan*/  BTN_6 ; 
 int /*<<< orphan*/  BTN_7 ; 
 int /*<<< orphan*/  BTN_8 ; 
 int /*<<< orphan*/  BTN_9 ; 
 int /*<<< orphan*/  BTN_A ; 
 int /*<<< orphan*/  BTN_B ; 
 int /*<<< orphan*/  BTN_C ; 
 int /*<<< orphan*/  BTN_MODE ; 
 int /*<<< orphan*/  BUS_RS232 ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_ABS ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SERIO_SPACEBALL ; 
#define  SPACEBALL_3003C 130 
#define  SPACEBALL_4000FLX 129 
#define  SPACEBALL_4000FLX_L 128 
 int SPACEBALL_MAX_ID ; 
 struct input_dev* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 
 int FUNC4 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct spaceball*) ; 
 struct spaceball* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct serio*) ; 
 int FUNC9 (struct serio*,struct serio_driver*) ; 
 int /*<<< orphan*/  FUNC10 (struct serio*,struct spaceball*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/ * spaceball_names ; 

__attribute__((used)) static int FUNC12(struct serio *serio, struct serio_driver *drv)
{
	struct spaceball *spaceball;
	struct input_dev *input_dev;
	int err = -ENOMEM;
	int i, id;

	if ((id = serio->id.id) > SPACEBALL_MAX_ID)
		return -ENODEV;

	spaceball = FUNC7(sizeof(struct spaceball), GFP_KERNEL);
	input_dev = FUNC2();
	if (!spaceball || !input_dev)
		goto fail1;

	spaceball->dev = input_dev;
	FUNC11(spaceball->phys, sizeof(spaceball->phys), "%s/input0", serio->phys);

	input_dev->name = spaceball_names[id];
	input_dev->phys = spaceball->phys;
	input_dev->id.bustype = BUS_RS232;
	input_dev->id.vendor = SERIO_SPACEBALL;
	input_dev->id.product = id;
	input_dev->id.version = 0x0100;
	input_dev->dev.parent = &serio->dev;

	input_dev->evbit[0] = FUNC0(EV_KEY) | FUNC0(EV_ABS);

	switch (id) {
		case SPACEBALL_4000FLX:
		case SPACEBALL_4000FLX_L:
			input_dev->keybit[FUNC1(BTN_0)] |= FUNC0(BTN_9);
			input_dev->keybit[FUNC1(BTN_A)] |= FUNC0(BTN_A) |
				FUNC0(BTN_B) | FUNC0(BTN_C) |
				FUNC0(BTN_MODE);
		default:
			input_dev->keybit[FUNC1(BTN_0)] |= FUNC0(BTN_2) |
				FUNC0(BTN_3) | FUNC0(BTN_4) |
				FUNC0(BTN_5) | FUNC0(BTN_6) |
				FUNC0(BTN_7) | FUNC0(BTN_8);
		case SPACEBALL_3003C:
			input_dev->keybit[FUNC1(BTN_0)] |= FUNC0(BTN_1) |
				FUNC0(BTN_8);
	}

	for (i = 0; i < 3; i++) {
		FUNC5(input_dev, ABS_X + i, -8000, 8000, 8, 40);
		FUNC5(input_dev, ABS_RX + i, -1600, 1600, 2, 8);
	}

	FUNC10(serio, spaceball);

	err = FUNC9(serio, drv);
	if (err)
		goto fail2;

	err = FUNC4(spaceball->dev);
	if (err)
		goto fail3;

	return 0;

 fail3:	FUNC8(serio);
 fail2:	FUNC10(serio, NULL);
 fail1:	FUNC3(input_dev);
	FUNC6(spaceball);
	return err;
}
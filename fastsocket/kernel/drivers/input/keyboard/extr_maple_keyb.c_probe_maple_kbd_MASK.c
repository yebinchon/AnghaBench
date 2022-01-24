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
struct maple_driver {int dummy; } ;
struct maple_device {struct maple_driver* driver; int /*<<< orphan*/  dev; int /*<<< orphan*/  product_name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_3__ {int /*<<< orphan*/  bustype; } ;
struct input_dev {int* evbit; int keycodesize; int /*<<< orphan*/  keybit; TYPE_2__ dev; TYPE_1__ id; int /*<<< orphan*/  keycodemax; int /*<<< orphan*/  keycode; int /*<<< orphan*/  name; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct dc_kbd {int /*<<< orphan*/  keycode; struct input_dev* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_HOST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  EV_REP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  MAPLE_FUNC_KEYBOARD ; 
 int /*<<< orphan*/  MSC_SCAN ; 
 int NR_SCANCODES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dc_kbd_callback ; 
 int /*<<< orphan*/ * dc_kbd_keycode ; 
 struct input_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct input_dev*) ; 
 int FUNC6 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*,struct dc_kbd*) ; 
 int /*<<< orphan*/  FUNC9 (struct dc_kbd*) ; 
 struct dc_kbd* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct maple_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct maple_device*,struct dc_kbd*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct maple_device* FUNC14 (struct device*) ; 
 struct maple_driver* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct device *dev)
{
	struct maple_device *mdev;
	struct maple_driver *mdrv;
	int i, error;
	struct dc_kbd *kbd;
	struct input_dev *idev;

	mdev = FUNC14(dev);
	mdrv = FUNC15(dev->driver);

	kbd = FUNC10(sizeof(struct dc_kbd), GFP_KERNEL);
	if (!kbd) {
		error = -ENOMEM;
		goto fail;
	}

	idev = FUNC4();
	if (!idev) {
		error = -ENOMEM;
		goto fail_idev_alloc;
	}

	kbd->dev = idev;
	FUNC13(kbd->keycode, dc_kbd_keycode, sizeof(kbd->keycode));

	idev->name = mdev->product_name;
	idev->evbit[0] = FUNC1(EV_KEY) | FUNC1(EV_REP);
	idev->keycode = kbd->keycode;
	idev->keycodesize = sizeof(unsigned short);
	idev->keycodemax = FUNC0(kbd->keycode);
	idev->id.bustype = BUS_HOST;
	idev->dev.parent = &mdev->dev;

	for (i = 0; i < NR_SCANCODES; i++)
		FUNC3(dc_kbd_keycode[i], idev->keybit);
	FUNC2(KEY_RESERVED, idev->keybit);

	FUNC7(idev, EV_MSC, MSC_SCAN);
	FUNC8(idev, kbd);

	error = FUNC6(idev);
	if (error)
		goto fail_register;

	/* Maple polling is locked to VBLANK - which may be just 50/s */
	FUNC11(mdev, dc_kbd_callback, HZ/50,
		MAPLE_FUNC_KEYBOARD);

	mdev->driver = mdrv;

	FUNC12(mdev, kbd);

	return error;

fail_register:
	FUNC12(mdev, NULL);
	FUNC5(idev);
fail_idev_alloc:
	FUNC9(kbd);
fail:
	return error;
}
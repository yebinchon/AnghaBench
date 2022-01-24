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
struct input_dev {int /*<<< orphan*/  evbit; } ;
struct iforce {int bus; TYPE_1__* irq; int /*<<< orphan*/  usbdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EV_FF ; 
 int /*<<< orphan*/  FF_CMD_ENABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  IFORCE_USB 128 
 int /*<<< orphan*/  FUNC0 (struct iforce*,int /*<<< orphan*/ ,char*) ; 
 struct iforce* FUNC1 (struct input_dev*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev)
{
	struct iforce *iforce = FUNC1(dev);

	switch (iforce->bus) {
#ifdef CONFIG_JOYSTICK_IFORCE_USB
		case IFORCE_USB:
			iforce->irq->dev = iforce->usbdev;
			if (usb_submit_urb(iforce->irq, GFP_KERNEL))
				return -EIO;
			break;
#endif
	}

	if (FUNC2(EV_FF, dev->evbit)) {
		/* Enable force feedback */
		FUNC0(iforce, FF_CMD_ENABLE, "\004");
	}

	return 0;
}
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
struct usb_kbd {TYPE_1__* irq; int /*<<< orphan*/  usbdev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usb_kbd* FUNC0 (struct input_dev*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	struct usb_kbd *kbd = FUNC0(dev);

	kbd->irq->dev = kbd->usbdev;
	if (FUNC1(kbd->irq, GFP_KERNEL))
		return -EIO;

	return 0;
}
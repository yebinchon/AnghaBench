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
struct usb_xpad {scalar_t__ xtype; TYPE_1__* irq_in; int /*<<< orphan*/  udev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ XTYPE_XBOX360W ; 
 struct usb_xpad* FUNC0 (struct input_dev*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct input_dev *dev)
{
	struct usb_xpad *xpad = FUNC0(dev);

	/* URB was submitted in probe */
	if(xpad->xtype == XTYPE_XBOX360W)
		return 0;

	xpad->irq_in->dev = xpad->udev;
	if (FUNC1(xpad->irq_in, GFP_KERNEL))
		return -EIO;

	return 0;
}
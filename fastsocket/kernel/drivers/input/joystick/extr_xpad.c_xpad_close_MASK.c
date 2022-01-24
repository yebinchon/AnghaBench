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
struct usb_xpad {scalar_t__ xtype; int /*<<< orphan*/  irq_in; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ XTYPE_XBOX360W ; 
 struct usb_xpad* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xpad*) ; 

__attribute__((used)) static void FUNC3(struct input_dev *dev)
{
	struct usb_xpad *xpad = FUNC0(dev);

	if(xpad->xtype != XTYPE_XBOX360W)
		FUNC1(xpad->irq_in);
	FUNC2(xpad);
}
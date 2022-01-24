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
struct usb_xpad {scalar_t__ xtype; int /*<<< orphan*/  idata_dma; int /*<<< orphan*/  idata; int /*<<< orphan*/  udev; int /*<<< orphan*/  irq_in; int /*<<< orphan*/  bulk_out; int /*<<< orphan*/  dev; } ;
struct usb_interface {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XPAD_PKT_LEN ; 
 scalar_t__ XTYPE_XBOX360W ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct usb_xpad* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xpad*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xpad*) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct usb_xpad *xpad = FUNC4 (intf);

	FUNC6(intf, NULL);
	if (xpad) {
		FUNC8(xpad);
		FUNC0(xpad->dev);
		FUNC7(xpad);
		if (xpad->xtype == XTYPE_XBOX360W) {
			FUNC5(xpad->bulk_out);
			FUNC3(xpad->bulk_out);
			FUNC5(xpad->irq_in);
		}
		FUNC3(xpad->irq_in);
		FUNC2(xpad->udev, XPAD_PKT_LEN,
				xpad->idata, xpad->idata_dma);
		FUNC1(xpad);
	}
}
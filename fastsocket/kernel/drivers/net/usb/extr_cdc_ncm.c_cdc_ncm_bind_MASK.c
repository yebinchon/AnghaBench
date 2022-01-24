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
struct usbnet {int dummy; } ;
struct usb_interface {int /*<<< orphan*/  cur_altsetting; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct usbnet*,struct usb_interface*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usbnet *dev, struct usb_interface *intf)
{
	int ret;

	/* MBIM backwards compatible function? */
	FUNC2(dev, intf);
	if (FUNC1(intf->cur_altsetting))
		return -ENODEV;

	/* NCM data altsetting is always 1 */
	ret = FUNC0(dev, intf, 1);

	/*
	 * We should get an event when network connection is "connected" or
	 * "disconnected". Set network connection in "disconnected" state
	 * (carrier is OFF) during attach, so the IP network stack does not
	 * start IPv6 negotiation and more.
	 */
	FUNC3(dev, 0, 0);
	return ret;
}
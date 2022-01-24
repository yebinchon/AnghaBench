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
struct usb_usbvision {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_USB_HEIGHT ; 
 int /*<<< orphan*/  MAX_USB_WIDTH ; 
 int FUNC0 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_usbvision*,int) ; 

int FUNC7(struct usb_usbvision *usbvision, int format)
{
	FUNC6(usbvision, format);
	FUNC3(usbvision);
	FUNC2(usbvision);
	FUNC4(usbvision);
	FUNC5(usbvision, MAX_USB_WIDTH, MAX_USB_HEIGHT);
	FUNC1(usbvision);

	/* cosas del PCM */
	return FUNC0(usbvision);
}
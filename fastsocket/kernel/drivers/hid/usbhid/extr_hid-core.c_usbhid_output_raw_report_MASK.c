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
struct usbhid_device {struct usb_interface* intf; } ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_2__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
typedef  unsigned char __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  HID_REQ_SET_REPORT ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 struct usb_device* FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hid, __u8 *buf, size_t count,
		unsigned char report_type)
{
	struct usbhid_device *usbhid = hid->driver_data;
	struct usb_device *dev = FUNC0(hid);
	struct usb_interface *intf = usbhid->intf;
	struct usb_host_interface *interface = intf->cur_altsetting;
	int ret;

	ret = FUNC1(dev, FUNC2(dev, 0),
		HID_REQ_SET_REPORT,
		USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
		((report_type + 1) << 8) | *buf,
		interface->desc.bInterfaceNumber, buf + 1, count - 1,
		USB_CTRL_SET_TIMEOUT);

	/* count also the report id */
	if (ret > 0)
		ret++;

	return ret;
}
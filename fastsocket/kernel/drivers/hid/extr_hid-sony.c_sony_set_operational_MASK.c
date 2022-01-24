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
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct hid_device {TYPE_3__ dev; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_REQ_GET_REPORT ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hid_device *hdev)
{
	struct usb_interface *intf = FUNC4(hdev->dev.parent);
	struct usb_device *dev = FUNC1(intf);
	__u16 ifnum = intf->cur_altsetting->desc.bInterfaceNumber;
	int ret;
	char *buf = FUNC3(18, GFP_KERNEL);

	if (!buf)
		return -ENOMEM;

	ret = FUNC5(dev, FUNC6(dev, 0),
				 HID_REQ_GET_REPORT,
				 USB_DIR_IN | USB_TYPE_CLASS |
				 USB_RECIP_INTERFACE,
				 (3 << 8) | 0xf2, ifnum, buf, 17,
				 USB_CTRL_GET_TIMEOUT);
	if (ret < 0)
		FUNC0(&hdev->dev, "can't set operational mode\n");

	FUNC2(buf);

	return ret;
}
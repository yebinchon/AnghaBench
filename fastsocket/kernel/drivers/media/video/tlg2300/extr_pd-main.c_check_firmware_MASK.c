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
typedef  int /*<<< orphan*/  u32 ;
struct usb_device {int dummy; } ;
struct cmd_firmware_vers_s {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GET_FW_ID ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int REQ_GET_CMD ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct usb_device *udev, int *down_firmware)
{
	void *buf;
	int ret;
	struct cmd_firmware_vers_s *cmd_firm;

	buf = FUNC2(sizeof(*cmd_firm) + sizeof(u32), GFP_KERNEL);
	if (!buf)
		return -ENOMEM;
	ret = FUNC3(udev,
			 FUNC4(udev, 0),
			 REQ_GET_CMD | GET_FW_ID,
			 USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			 0,
			 0,
			 buf,
			 sizeof(*cmd_firm) + sizeof(u32),
			 USB_CTRL_GET_TIMEOUT);
	FUNC1(buf);

	if (ret < 0) {
		*down_firmware = 1;
		return FUNC0(udev);
	}
	return ret;
}
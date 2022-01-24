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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_device *udev, u8 request, u16 value,
			    u16 index, unsigned char *cp, u16 size)
{
	int status;

	unsigned char *transfer_buffer = FUNC2(size, GFP_KERNEL);
	if (!transfer_buffer) {
		FUNC0(&udev->dev, "kmalloc(%d) failed\n", size);
		return -ENOMEM;
	}

	FUNC3(transfer_buffer, cp, size);

	status = FUNC4(udev,
				 FUNC5(udev, 0),
				 request,
				 USB_DIR_OUT | USB_TYPE_VENDOR |
				 USB_RECIP_DEVICE, value, index,
				 transfer_buffer, size, CTRL_TIMEOUT);

	FUNC1(transfer_buffer);

	if (status < 0)
		FUNC0(&udev->dev,
			"Failed sending control message, error %d.\n", status);

	return status;
}
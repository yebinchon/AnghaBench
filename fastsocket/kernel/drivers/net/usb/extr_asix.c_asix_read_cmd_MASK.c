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
struct usbnet {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbnet *dev, u8 cmd, u16 value, u16 index,
			    u16 size, void *data)
{
	void *buf;
	int err = -ENOMEM;

	FUNC0(dev,"asix_read_cmd() cmd=0x%02x value=0x%04x index=0x%04x size=%d",
		cmd, value, index, size);

	buf = FUNC2(size, GFP_KERNEL);
	if (!buf)
		goto out;

	err = FUNC4(
		dev->udev,
		FUNC5(dev->udev, 0),
		cmd,
		USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
		value,
		index,
		buf,
		size,
		USB_CTRL_GET_TIMEOUT);
	if (err == size)
		FUNC3(data, buf, size);
	else if (err >= 0)
		err = -EINVAL;
	FUNC1(buf);

out:
	return err;
}
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
typedef  int /*<<< orphan*/  u16 ;
struct usbnet {int /*<<< orphan*/  udev; int /*<<< orphan*/  net; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usbnet *dev, u8 cmd, u8 reqtype,
			      u16 value, u16 index, const void *data,
			      u16 size)
{
	void *buf = NULL;
	int err = -ENOMEM;

	FUNC2(dev->net, "usbnet_write_cmd cmd=0x%02x reqtype=%02x"
		   " value=0x%04x index=0x%04x size=%d\n",
		   cmd, reqtype, value, index, size);

	if (data) {
		buf = FUNC1(data, size, GFP_KERNEL);
		if (!buf)
			goto out;
	}

	err = FUNC3(dev->udev, FUNC4(dev->udev, 0),
			      cmd, reqtype, value, index, buf, size,
			      USB_CTRL_SET_TIMEOUT);
	FUNC0(buf);

out:
	return err;
}
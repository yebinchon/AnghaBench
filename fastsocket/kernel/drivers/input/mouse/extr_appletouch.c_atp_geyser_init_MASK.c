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
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATP_GEYSER_MODE_READ_REQUEST_ID ; 
 int /*<<< orphan*/  ATP_GEYSER_MODE_REQUEST_INDEX ; 
 int /*<<< orphan*/  ATP_GEYSER_MODE_REQUEST_VALUE ; 
 char ATP_GEYSER_MODE_VENDOR_VALUE ; 
 int /*<<< orphan*/  ATP_GEYSER_MODE_WRITE_REQUEST_ID ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_device *udev)
{
	char *data;
	int size;
	int i;
	int ret;

	data = FUNC3(8, GFP_KERNEL);
	if (!data) {
		FUNC1("Out of memory");
		return -ENOMEM;
	}

	size = FUNC4(udev, FUNC5(udev, 0),
			ATP_GEYSER_MODE_READ_REQUEST_ID,
			USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			ATP_GEYSER_MODE_REQUEST_VALUE,
			ATP_GEYSER_MODE_REQUEST_INDEX, data, 8, 5000);

	if (size != 8) {
		FUNC0("atp_geyser_init: read error\n");
		for (i = 0; i < 8; i++)
			FUNC0("appletouch[%d]: %d\n", i, data[i]);

		FUNC1("Failed to read mode from device.");
		ret = -EIO;
		goto out_free;
	}

	/* Apply the mode switch */
	data[0] = ATP_GEYSER_MODE_VENDOR_VALUE;

	size = FUNC4(udev, FUNC6(udev, 0),
			ATP_GEYSER_MODE_WRITE_REQUEST_ID,
			USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			ATP_GEYSER_MODE_REQUEST_VALUE,
			ATP_GEYSER_MODE_REQUEST_INDEX, data, 8, 5000);

	if (size != 8) {
		FUNC0("atp_geyser_init: write error\n");
		for (i = 0; i < 8; i++)
			FUNC0("appletouch[%d]: %d\n", i, data[i]);

		FUNC1("Failed to request geyser raw mode");
		ret = -EIO;
		goto out_free;
	}
	ret = 0;
out_free:
	FUNC2(data);
	return ret;
}
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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {int dummy; } ;
struct dvb_usb_device_properties {int usb_ctrl; int (* download_firmware ) (struct usb_device*,struct firmware const*) ;int /*<<< orphan*/  firmware; } ;

/* Variables and functions */
#define  CYPRESS_AN2135 131 
#define  CYPRESS_AN2235 130 
#define  CYPRESS_FX2 129 
#define  DEVICE_SPECIFIC 128 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 
 int FUNC3 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct usb_device*,struct firmware const*) ; 
 int FUNC5 (struct usb_device*,struct firmware const*,int) ; 

int FUNC6(struct usb_device *udev, struct dvb_usb_device_properties *props)
{
	int ret;
	const struct firmware *fw = NULL;

	if ((ret = FUNC3(&fw, props->firmware, &udev->dev)) != 0) {
		FUNC0("did not find the firmware file. (%s) "
			"Please see linux/Documentation/dvb/ for more details on firmware-problems. (%d)",
			props->firmware,ret);
		return ret;
	}

	FUNC1("downloading firmware from file '%s'",props->firmware);

	switch (props->usb_ctrl) {
		case CYPRESS_AN2135:
		case CYPRESS_AN2235:
		case CYPRESS_FX2:
			ret = FUNC5(udev, fw, props->usb_ctrl);
			break;
		case DEVICE_SPECIFIC:
			if (props->download_firmware)
				ret = props->download_firmware(udev,fw);
			else {
				FUNC0("BUG: driver didn't specified a download_firmware-callback, although it claims to have a DEVICE_SPECIFIC one.");
				ret = -EINVAL;
			}
			break;
		default:
			ret = -EINVAL;
			break;
	}

	FUNC2(fw);
	return ret;
}
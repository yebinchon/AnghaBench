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
struct bcm5974 {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 char BCM5974_WELLSPRING_MODE_NORMAL_VALUE ; 
 int /*<<< orphan*/  BCM5974_WELLSPRING_MODE_READ_REQUEST_ID ; 
 int /*<<< orphan*/  BCM5974_WELLSPRING_MODE_REQUEST_INDEX ; 
 int /*<<< orphan*/  BCM5974_WELLSPRING_MODE_REQUEST_VALUE ; 
 char BCM5974_WELLSPRING_MODE_VENDOR_VALUE ; 
 int /*<<< orphan*/  BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct bcm5974 *dev, bool on)
{
	char *data = FUNC3(8, GFP_KERNEL);
	int retval = 0, size;

	if (!data) {
		FUNC1("bcm5974: out of memory");
		retval = -ENOMEM;
		goto out;
	}

	/* read configuration */
	size = FUNC4(dev->udev, FUNC5(dev->udev, 0),
			BCM5974_WELLSPRING_MODE_READ_REQUEST_ID,
			USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			BCM5974_WELLSPRING_MODE_REQUEST_VALUE,
			BCM5974_WELLSPRING_MODE_REQUEST_INDEX, data, 8, 5000);

	if (size != 8) {
		FUNC1("bcm5974: could not read from device");
		retval = -EIO;
		goto out;
	}

	/* apply the mode switch */
	data[0] = on ?
		BCM5974_WELLSPRING_MODE_VENDOR_VALUE :
		BCM5974_WELLSPRING_MODE_NORMAL_VALUE;

	/* write configuration */
	size = FUNC4(dev->udev, FUNC6(dev->udev, 0),
			BCM5974_WELLSPRING_MODE_WRITE_REQUEST_ID,
			USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			BCM5974_WELLSPRING_MODE_REQUEST_VALUE,
			BCM5974_WELLSPRING_MODE_REQUEST_INDEX, data, 8, 5000);

	if (size != 8) {
		FUNC1("bcm5974: could not write to device");
		retval = -EIO;
		goto out;
	}

	FUNC0(2, "bcm5974: switched to %s mode.\n",
		on ? "wellspring" : "normal");

 out:
	FUNC2(data);
	return retval;
}
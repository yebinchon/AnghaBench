#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_10__ {TYPE_6__ dev; int /*<<< orphan*/  name; struct i2c_tiny_usb* algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  class; int /*<<< orphan*/  owner; } ;
struct i2c_tiny_usb {TYPE_3__ adapter; struct usb_interface* interface; TYPE_4__* usb_dev; } ;
struct TYPE_8__ {int /*<<< orphan*/  bcdDevice; } ;
struct TYPE_11__ {int devnum; TYPE_2__* bus; TYPE_1__ descriptor; } ;
struct TYPE_9__ {int busnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_DELAY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_CLASS_HWMON ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  delay ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_tiny_usb*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*) ; 
 struct i2c_tiny_usb* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  usb_algorithm ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct i2c_tiny_usb*) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *interface,
			      const struct usb_device_id *id)
{
	struct i2c_tiny_usb *dev;
	int retval = -ENOMEM;
	u16 version;

	FUNC0(&interface->dev, "probing usb device\n");

	/* allocate memory for our device state and initialize it */
	dev = FUNC6(sizeof(*dev), GFP_KERNEL);
	if (dev == NULL) {
		FUNC1(&interface->dev, "Out of memory\n");
		goto error;
	}

	dev->usb_dev = FUNC9(FUNC5(interface));
	dev->interface = interface;

	/* save our data pointer in this interface device */
	FUNC10(interface, dev);

	version = FUNC7(dev->usb_dev->descriptor.bcdDevice);
	FUNC2(&interface->dev,
		 "version %x.%02x found at bus %03d address %03d\n",
		 version >> 8, version & 0xff,
		 dev->usb_dev->bus->busnum, dev->usb_dev->devnum);

	/* setup i2c adapter description */
	dev->adapter.owner = THIS_MODULE;
	dev->adapter.class = I2C_CLASS_HWMON;
	dev->adapter.algo = &usb_algorithm;
	dev->adapter.algo_data = dev;
	FUNC8(dev->adapter.name, sizeof(dev->adapter.name),
		 "i2c-tiny-usb at bus %03d device %03d",
		 dev->usb_dev->bus->busnum, dev->usb_dev->devnum);

	if (FUNC11(&dev->adapter, CMD_SET_DELAY, delay, 0, NULL, 0) != 0) {
		FUNC1(&dev->adapter.dev,
			"failure setting delay to %dus\n", delay);
		retval = -EIO;
		goto error;
	}

	dev->adapter.dev.parent = &dev->interface->dev;

	/* and finally attach to i2c layer */
	FUNC3(&dev->adapter);

	/* inform user about successful attachment to i2c layer */
	FUNC2(&dev->adapter.dev, "connected i2c-tiny-usb device\n");

	return 0;

 error:
	if (dev)
		FUNC4(dev);

	return retval;
}
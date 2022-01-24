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
struct uvc_device {int quirks; int uvc_version; int /*<<< orphan*/  name; int /*<<< orphan*/  intfnum; int /*<<< orphan*/  intf; int /*<<< orphan*/  udev; int /*<<< orphan*/  nmappings; int /*<<< orphan*/  users; int /*<<< orphan*/  nstreams; int /*<<< orphan*/  streams; int /*<<< orphan*/  chains; int /*<<< orphan*/  entities; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int driver_info; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {char* product; scalar_t__ autosuspend_disabled; TYPE_3__ descriptor; int /*<<< orphan*/  devpath; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  UVC_TRACE_PROBE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 struct uvc_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,struct uvc_device*) ; 
 scalar_t__ FUNC10 (struct uvc_device*) ; 
 scalar_t__ FUNC11 (struct uvc_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,...) ; 
 int uvc_quirks_param ; 
 scalar_t__ FUNC13 (struct uvc_device*) ; 
 scalar_t__ FUNC14 (struct uvc_device*) ; 
 int FUNC15 (struct uvc_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct uvc_device*) ; 

__attribute__((used)) static int FUNC18(struct usb_interface *intf,
		     const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC2(intf);
	struct uvc_device *dev;
	int ret;

	if (id->idVendor && id->idProduct)
		FUNC16(UVC_TRACE_PROBE, "Probing known UVC device %s "
				"(%04x:%04x)\n", udev->devpath, id->idVendor,
				id->idProduct);
	else
		FUNC16(UVC_TRACE_PROBE, "Probing generic UVC device %s\n",
				udev->devpath);

	/* Allocate memory for the device and initialize it. */
	if ((dev = FUNC3(sizeof *dev, GFP_KERNEL)) == NULL)
		return -ENOMEM;

	FUNC0(&dev->entities);
	FUNC0(&dev->chains);
	FUNC0(&dev->streams);
	FUNC1(&dev->nstreams, 0);
	FUNC1(&dev->users, 0);
	FUNC1(&dev->nmappings, 0);

	dev->udev = FUNC7(udev);
	dev->intf = FUNC8(intf);
	dev->intfnum = intf->cur_altsetting->desc.bInterfaceNumber;
	dev->quirks = (uvc_quirks_param == -1)
		    ? id->driver_info : uvc_quirks_param;

	if (udev->product != NULL)
		FUNC6(dev->name, udev->product, sizeof dev->name);
	else
		FUNC5(dev->name, sizeof dev->name,
			"UVC Camera (%04x:%04x)",
			FUNC4(udev->descriptor.idVendor),
			FUNC4(udev->descriptor.idProduct));

	/* Parse the Video Class control descriptor. */
	if (FUNC11(dev) < 0) {
		FUNC16(UVC_TRACE_PROBE, "Unable to parse UVC "
			"descriptors.\n");
		goto error;
	}

	FUNC12(KERN_INFO, "Found UVC %u.%02x device %s (%04x:%04x)\n",
		dev->uvc_version >> 8, dev->uvc_version & 0xff,
		udev->product ? udev->product : "<unnamed>",
		FUNC4(udev->descriptor.idVendor),
		FUNC4(udev->descriptor.idProduct));

	if (dev->quirks != id->driver_info) {
		FUNC12(KERN_INFO, "Forcing device quirks to 0x%x by module "
			"parameter for testing purpose.\n", dev->quirks);
		FUNC12(KERN_INFO, "Please report required quirks to the "
			"linux-uvc-devel mailing list.\n");
	}

	/* Initialize controls. */
	if (FUNC10(dev) < 0)
		goto error;

	/* Scan the device for video chains. */
	if (FUNC14(dev) < 0)
		goto error;

	/* Register video devices. */
	if (FUNC13(dev) < 0)
		goto error;

	/* Save our data pointer in the interface data. */
	FUNC9(intf, dev);

	/* Initialize the interrupt URB. */
	if ((ret = FUNC15(dev)) < 0) {
		FUNC12(KERN_INFO, "Unable to initialize the status "
			"endpoint (%d), status interrupt will not be "
			"supported.\n", ret);
	}

	FUNC16(UVC_TRACE_PROBE, "UVC device initialized.\n");
	udev->autosuspend_disabled = 0;
	return 0;

error:
	FUNC17(dev);
	return -ENODEV;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct uvd {int debug; int ifaceAltInactive; int ifaceAltActive; unsigned char video_endp; int iso_packet_len; long paletteBits; long defaultPalette; int /*<<< orphan*/  canvas; int /*<<< orphan*/  videosize; int /*<<< orphan*/  iface; struct usb_device* dev; int /*<<< orphan*/  flags; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int bAlternateSetting; int bNumEndpoints; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_3__ desc; TYPE_2__* endpoint; } ;
struct usb_endpoint_descriptor {unsigned char bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {int bNumConfigurations; int /*<<< orphan*/  bcdDevice; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct TYPE_8__ {scalar_t__ initialized; scalar_t__ camera_model; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 TYPE_4__* FUNC0 (struct uvd*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 long VIDEO_PALETTE_RGB24 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cams ; 
 int debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  flags ; 
 struct usb_device* FUNC5 (struct usb_interface*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uvd*) ; 
 scalar_t__ FUNC8 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*,struct uvd*) ; 
 struct uvd* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct uvd*) ; 

__attribute__((used)) static int FUNC13(struct usb_interface *intf, const struct usb_device_id *devid)
{
	struct usb_device *dev = FUNC5(intf);
	struct uvd *uvd = NULL;
	int ix, i, nas;
	int actInterface=-1, inactInterface=-1, maxPS=0;
	unsigned char video_ep = 0;

	if (debug >= 1)
		FUNC3(&intf->dev, "ultracam_probe\n");

	/* We don't handle multi-config cameras */
	if (dev->descriptor.bNumConfigurations != 1)
		return -ENODEV;

	FUNC3(&intf->dev, "IBM Ultra camera found (rev. 0x%04x)\n",
		 FUNC6(dev->descriptor.bcdDevice));

	/* Validate found interface: must have one ISO endpoint */
	nas = intf->num_altsetting;
	if (debug > 0)
		FUNC3(&intf->dev, "Number of alternate settings=%d.\n",
			 nas);
	if (nas < 8) {
		FUNC4("Too few alternate settings for this camera!");
		return -ENODEV;
	}
	/* Validate all alternate settings */
	for (ix=0; ix < nas; ix++) {
		const struct usb_host_interface *interface;
		const struct usb_endpoint_descriptor *endpoint;

		interface = &intf->altsetting[ix];
		i = interface->desc.bAlternateSetting;
		if (interface->desc.bNumEndpoints != 1) {
			FUNC4("Interface %d. has %u. endpoints!",
			    interface->desc.bInterfaceNumber,
			    (unsigned)(interface->desc.bNumEndpoints));
			return -ENODEV;
		}
		endpoint = &interface->endpoint[0].desc;
		if (video_ep == 0)
			video_ep = endpoint->bEndpointAddress;
		else if (video_ep != endpoint->bEndpointAddress) {
			FUNC4("Alternate settings have different endpoint addresses!");
			return -ENODEV;
		}
		if (!FUNC9(endpoint)) {
			FUNC4("Interface %d. has non-ISO endpoint!",
			    interface->desc.bInterfaceNumber);
			return -ENODEV;
		}
		if (FUNC8(endpoint)) {
			FUNC4("Interface %d. has ISO OUT endpoint!",
			    interface->desc.bInterfaceNumber);
			return -ENODEV;
		}
		if (FUNC6(endpoint->wMaxPacketSize) == 0) {
			if (inactInterface < 0)
				inactInterface = i;
			else {
				FUNC4("More than one inactive alt. setting!");
				return -ENODEV;
			}
		} else {
			if (actInterface < 0) {
				actInterface = i;
				maxPS = FUNC6(endpoint->wMaxPacketSize);
				if (debug > 0)
					FUNC3(&intf->dev,
						 "Active setting=%d. "
						 "maxPS=%d.\n", i, maxPS);
			} else {
				/* Got another active alt. setting */
				if (maxPS < FUNC6(endpoint->wMaxPacketSize)) {
					/* This one is better! */
					actInterface = i;
					maxPS = FUNC6(endpoint->wMaxPacketSize);
					if (debug > 0) {
						FUNC3(&intf->dev,
							 "Even better ctive "
							 "setting=%d. "
							 "maxPS=%d.\n",
							 i, maxPS);
					}
				}
			}
		}
	}
	if ((maxPS <= 0) || (actInterface < 0) || (inactInterface < 0)) {
		FUNC4("Failed to recognize the camera!");
		return -ENODEV;
	}

	uvd = FUNC11(cams);
	if (uvd != NULL) {
		/* Here uvd is a fully allocated uvd object */
		uvd->flags = flags;
		uvd->debug = debug;
		uvd->dev = dev;
		uvd->iface = intf->altsetting->desc.bInterfaceNumber;
		uvd->ifaceAltInactive = inactInterface;
		uvd->ifaceAltActive = actInterface;
		uvd->video_endp = video_ep;
		uvd->iso_packet_len = maxPS;
		uvd->paletteBits = 1L << VIDEO_PALETTE_RGB24;
		uvd->defaultPalette = VIDEO_PALETTE_RGB24;
		uvd->canvas = FUNC1(640, 480);	/* FIXME */
		uvd->videosize = uvd->canvas; /* ultracam_size_to_videosize(size);*/

		/* Initialize ibmcam-specific data */
		FUNC2(FUNC0(uvd) != NULL);
		FUNC0(uvd)->camera_model = 0; /* Not used yet */
		FUNC0(uvd)->initialized = 0;

		FUNC7(uvd);

		i = FUNC12(uvd);
		if (i != 0) {
			FUNC4("usbvideo_RegisterVideoDevice() failed.");
			uvd = NULL;
		}
	}

	if (uvd) {
		FUNC10 (intf, uvd);
		return 0;
	}
	return -EIO;
}
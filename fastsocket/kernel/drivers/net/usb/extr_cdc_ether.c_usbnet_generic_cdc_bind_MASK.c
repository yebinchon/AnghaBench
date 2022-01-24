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
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct usbnet {int hard_mtu; TYPE_6__* udev; struct usb_host_endpoint* status; int /*<<< orphan*/  data; } ;
struct usb_interface_descriptor {int bNumEndpoints; int /*<<< orphan*/  bInterfaceClass; } ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_host_endpoint {int* extra; int extralen; struct usb_endpoint_descriptor desc; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_notification {int dummy; } ;
struct usb_cdc_acm_descriptor {int /*<<< orphan*/  bmCapabilities; } ;
struct cdc_state {struct usb_interface* data; struct usb_interface* control; TYPE_1__* ether; TYPE_5__* u; TYPE_4__* header; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; TYPE_2__* actconfig; } ;
struct TYPE_11__ {int bLength; int bMasterInterface0; int bSlaveInterface0; } ;
struct TYPE_10__ {int bLength; } ;
struct TYPE_9__ {int* extra; int extralen; struct usb_host_endpoint* endpoint; struct usb_interface_descriptor desc; } ;
struct TYPE_8__ {int extralen; int* extra; } ;
struct TYPE_7__ {int bLength; int /*<<< orphan*/  wMaxSegmentSize; } ;

/* Variables and functions */
 int EDOM ; 
 int ENODEV ; 
#define  USB_CDC_ACM_TYPE 131 
#define  USB_CDC_ETHERNET_TYPE 130 
#define  USB_CDC_HEADER_TYPE 129 
#define  USB_CDC_UNION_TYPE 128 
 int /*<<< orphan*/  USB_CLASS_CDC_DATA ; 
 int USB_DT_CS_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct usb_driver* FUNC2 (struct usb_interface*) ; 
 scalar_t__ FUNC3 (struct usb_interface_descriptor*) ; 
 scalar_t__ FUNC4 (struct usb_interface_descriptor*) ; 
 scalar_t__ FUNC5 (struct usb_interface_descriptor*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cdc_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct usb_driver*,struct usb_interface*,struct usbnet*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_driver*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_endpoint_descriptor*) ; 
 void* FUNC11 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct usbnet*,struct usb_interface*) ; 

int FUNC14(struct usbnet *dev, struct usb_interface *intf)
{
	u8				*buf = intf->cur_altsetting->extra;
	int				len = intf->cur_altsetting->extralen;
	struct usb_interface_descriptor	*d;
	struct cdc_state		*info = (void *) &dev->data;
	int				status;
	int				rndis;
	struct usb_driver		*driver = FUNC2(intf);

	if (sizeof dev->data < sizeof *info)
		return -EDOM;

	/* expect strict spec conformance for the descriptors, but
	 * cope with firmware which stores them in the wrong place
	 */
	if (len == 0 && dev->udev->actconfig->extralen) {
		/* Motorola SB4100 (and others: Brad Hards says it's
		 * from a Broadcom design) put CDC descriptors here
		 */
		buf = dev->udev->actconfig->extra;
		len = dev->udev->actconfig->extralen;
		if (len)
			FUNC0(&intf->dev,
				"CDC descriptors on config\n");
	}

	/* Maybe CDC descriptors are after the endpoint?  This bug has
	 * been seen on some 2Wire Inc RNDIS-ish products.
	 */
	if (len == 0) {
		struct usb_host_endpoint	*hep;

		hep = intf->cur_altsetting->endpoint;
		if (hep) {
			buf = hep->extra;
			len = hep->extralen;
		}
		if (len)
			FUNC0(&intf->dev,
				"CDC descriptors on endpoint\n");
	}

	/* this assumes that if there's a non-RNDIS vendor variant
	 * of cdc-acm, it'll fail RNDIS requests cleanly.
	 */
	rndis = FUNC4(&intf->cur_altsetting->desc)
		|| FUNC3(&intf->cur_altsetting->desc)
		|| FUNC5(&intf->cur_altsetting->desc);

	FUNC7(info, 0, sizeof *info);
	info->control = intf;
	while (len > 3) {
		if (buf [1] != USB_DT_CS_INTERFACE)
			goto next_desc;

		/* use bDescriptorSubType to identify the CDC descriptors.
		 * We expect devices with CDC header and union descriptors.
		 * For CDC Ethernet we need the ethernet descriptor.
		 * For RNDIS, ignore two (pointless) CDC modem descriptors
		 * in favor of a complicated OID-based RPC scheme doing what
		 * CDC Ethernet achieves with a simple descriptor.
		 */
		switch (buf [2]) {
		case USB_CDC_HEADER_TYPE:
			if (info->header) {
				FUNC0(&intf->dev, "extra CDC header\n");
				goto bad_desc;
			}
			info->header = (void *) buf;
			if (info->header->bLength != sizeof *info->header) {
				FUNC0(&intf->dev, "CDC header len %u\n",
					info->header->bLength);
				goto bad_desc;
			}
			break;
		case USB_CDC_ACM_TYPE:
			/* paranoia:  disambiguate a "real" vendor-specific
			 * modem interface from an RNDIS non-modem.
			 */
			if (rndis) {
				struct usb_cdc_acm_descriptor *acm;

				acm = (void *) buf;
				if (acm->bmCapabilities) {
					FUNC0(&intf->dev,
						"ACM capabilities %02x, "
						"not really RNDIS?\n",
						acm->bmCapabilities);
					goto bad_desc;
				}
			}
			break;
		case USB_CDC_UNION_TYPE:
			if (info->u) {
				FUNC0(&intf->dev, "extra CDC union\n");
				goto bad_desc;
			}
			info->u = (void *) buf;
			if (info->u->bLength != sizeof *info->u) {
				FUNC0(&intf->dev, "CDC union len %u\n",
					info->u->bLength);
				goto bad_desc;
			}

			/* we need a master/control interface (what we're
			 * probed with) and a slave/data interface; union
			 * descriptors sort this all out.
			 */
			info->control = FUNC11(dev->udev,
						info->u->bMasterInterface0);
			info->data = FUNC11(dev->udev,
						info->u->bSlaveInterface0);
			if (!info->control || !info->data) {
				FUNC0(&intf->dev,
					"master #%u/%p slave #%u/%p\n",
					info->u->bMasterInterface0,
					info->control,
					info->u->bSlaveInterface0,
					info->data);
				goto bad_desc;
			}
			if (info->control != intf) {
				FUNC0(&intf->dev, "bogus CDC Union\n");
				/* Ambit USB Cable Modem (and maybe others)
				 * interchanges master and slave interface.
				 */
				if (info->data == intf) {
					info->data = info->control;
					info->control = intf;
				} else
					goto bad_desc;
			}

			/* a data interface altsetting does the real i/o */
			d = &info->data->cur_altsetting->desc;
			if (d->bInterfaceClass != USB_CLASS_CDC_DATA) {
				FUNC0(&intf->dev, "slave class %u\n",
					d->bInterfaceClass);
				goto bad_desc;
			}
			break;
		case USB_CDC_ETHERNET_TYPE:
			if (info->ether) {
				FUNC0(&intf->dev, "extra CDC ether\n");
				goto bad_desc;
			}
			info->ether = (void *) buf;
			if (info->ether->bLength != sizeof *info->ether) {
				FUNC0(&intf->dev, "CDC ether len %u\n",
					info->ether->bLength);
				goto bad_desc;
			}
			dev->hard_mtu = FUNC6(
						info->ether->wMaxSegmentSize);
			/* because of Zaurus, we may be ignoring the host
			 * side link address we were given.
			 */
			break;
		}
next_desc:
		len -= buf [0];	/* bLength */
		buf += buf [0];
	}

	/* Microsoft ActiveSync based and some regular RNDIS devices lack the
	 * CDC descriptors, so we'll hard-wire the interfaces and not check
	 * for descriptors.
	 */
	if (rndis && !info->u) {
		info->control = FUNC11(dev->udev, 0);
		info->data = FUNC11(dev->udev, 1);
		if (!info->control || !info->data) {
			FUNC0(&intf->dev,
				"rndis: master #0/%p slave #1/%p\n",
				info->control,
				info->data);
			goto bad_desc;
		}

	} else if (!info->header || !info->u || (!rndis && !info->ether)) {
		FUNC0(&intf->dev, "missing cdc %s%s%sdescriptor\n",
			info->header ? "" : "header ",
			info->u ? "" : "union ",
			info->ether ? "" : "ether ");
		goto bad_desc;
	}

	/* claim data interface and set it up ... with side effects.
	 * network traffic can't flow until an altsetting is enabled.
	 */
	status = FUNC8(driver, info->data, dev);
	if (status < 0)
		return status;
	status = FUNC13(dev, info->data);
	if (status < 0) {
		/* ensure immediate exit from usbnet_disconnect */
		FUNC12(info->data, NULL);
		FUNC9(driver, info->data);
		return status;
	}

	/* status endpoint: optional for CDC Ethernet, not RNDIS (or ACM) */
	dev->status = NULL;
	if (info->control->cur_altsetting->desc.bNumEndpoints == 1) {
		struct usb_endpoint_descriptor	*desc;

		dev->status = &info->control->cur_altsetting->endpoint [0];
		desc = &dev->status->desc;
		if (!FUNC10(desc)
				|| (FUNC6(desc->wMaxPacketSize)
					< sizeof(struct usb_cdc_notification))
				|| !desc->bInterval) {
			FUNC0(&intf->dev, "bad notification endpoint\n");
			dev->status = NULL;
		}
	}
	if (rndis && !dev->status) {
		FUNC0(&intf->dev, "missing RNDIS status endpoint\n");
		FUNC12(info->data, NULL);
		FUNC9(driver, info->data);
		return -ENODEV;
	}
	return 0;

bad_desc:
	FUNC1(&dev->udev->dev, "bad CDC descriptors\n");
	return -ENODEV;
}
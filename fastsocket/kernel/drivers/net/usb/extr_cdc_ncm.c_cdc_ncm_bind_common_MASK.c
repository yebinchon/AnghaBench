#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_14__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int u8 ;
struct usbnet {unsigned long* data; TYPE_10__* udev; int /*<<< orphan*/  rx_urb_size; int /*<<< orphan*/ * status; int /*<<< orphan*/  out; int /*<<< orphan*/  in; TYPE_7__* net; int /*<<< orphan*/  hard_mtu; } ;
struct usb_interface {TYPE_8__* cur_altsetting; int /*<<< orphan*/  dev; TYPE_9__* intf_assoc; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_union_desc {int bMasterInterface0; int bSlaveInterface0; } ;
struct usb_cdc_ncm_desc {int dummy; } ;
struct usb_cdc_mbim_desc {int dummy; } ;
struct usb_cdc_ether_desc {int /*<<< orphan*/  iMACAddress; int /*<<< orphan*/  wMaxSegmentSize; } ;
struct TYPE_22__ {unsigned long data; int /*<<< orphan*/  func; } ;
struct TYPE_16__ {int /*<<< orphan*/ * function; } ;
struct cdc_ncm_ctx {struct usb_interface* data; struct usb_interface* control; scalar_t__ rx_speed; scalar_t__ tx_speed; int /*<<< orphan*/  rx_max; int /*<<< orphan*/ * status_ep; TYPE_5__* out_ep; TYPE_3__* in_ep; struct usb_cdc_ether_desc const* ether_desc; struct usb_interface* intf; struct usb_cdc_mbim_desc const* mbim_desc; struct usb_cdc_union_desc const* union_desc; struct usb_cdc_ncm_desc const* func_desc; TYPE_10__* udev; TYPE_7__* netdev; int /*<<< orphan*/  mtx; int /*<<< orphan*/  stop; TYPE_6__ bh; TYPE_14__ tx_timer; } ;
struct TYPE_25__ {int bInterfaceCount; } ;
struct TYPE_17__ {int bInterfaceNumber; } ;
struct TYPE_24__ {int* extra; int extralen; TYPE_1__ desc; } ;
struct TYPE_23__ {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/ * ethtool_ops; } ;
struct TYPE_20__ {int bEndpointAddress; } ;
struct TYPE_21__ {TYPE_4__ desc; } ;
struct TYPE_18__ {int bEndpointAddress; } ;
struct TYPE_19__ {TYPE_2__ desc; } ;
struct TYPE_15__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDC_NCM_MAX_DATAGRAM_SIZE ; 
 int /*<<< orphan*/  CDC_NCM_MIN_DATAGRAM_SIZE ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
#define  USB_CDC_ETHERNET_TYPE 131 
#define  USB_CDC_MBIM_TYPE 130 
#define  USB_CDC_NCM_TYPE 129 
#define  USB_CDC_UNION_TYPE 128 
 int USB_DT_CS_INTERFACE ; 
 int USB_ENDPOINT_NUMBER_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdc_ncm_ethtool_ops ; 
 int /*<<< orphan*/  FUNC1 (struct cdc_ncm_ctx*,struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC2 (struct cdc_ncm_ctx*) ; 
 scalar_t__ FUNC3 (struct cdc_ncm_ctx*) ; 
 int /*<<< orphan*/  cdc_ncm_tx_timer_cb ; 
 int /*<<< orphan*/  cdc_ncm_txpath_bh ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 struct usb_driver* FUNC6 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_14__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cdc_ncm_ctx* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct usb_driver*,struct usb_interface*,struct usbnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_driver*,struct usb_interface*) ; 
 void* FUNC13 (TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_10__*,int) ; 
 int FUNC15 (TYPE_10__*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct usbnet*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_10__*,int) ; 
 int FUNC18 (struct usbnet*,int /*<<< orphan*/ ) ; 

int FUNC19(struct usbnet *dev, struct usb_interface *intf, u8 data_altsetting)
{
	struct cdc_ncm_ctx *ctx;
	struct usb_driver *driver;
	u8 *buf;
	int len;
	int temp;
	u8 iface_no;

	ctx = FUNC8(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC7(&ctx->tx_timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
	ctx->tx_timer.function = &cdc_ncm_tx_timer_cb;
	ctx->bh.data = (unsigned long)ctx;
	ctx->bh.func = cdc_ncm_txpath_bh;
	FUNC0(&ctx->stop, 0);
	FUNC10(&ctx->mtx);
	ctx->netdev = dev->net;

	/* store ctx pointer in device data field */
	dev->data[0] = (unsigned long)ctx;

	/* get some pointers */
	driver = FUNC6(intf);
	buf = intf->cur_altsetting->extra;
	len = intf->cur_altsetting->extralen;

	ctx->udev = dev->udev;
	ctx->intf = intf;

	/* parse through descriptors associated with control interface */
	while ((len > 0) && (buf[0] > 2) && (buf[0] <= len)) {

		if (buf[1] != USB_DT_CS_INTERFACE)
			goto advance;

		switch (buf[2]) {
		case USB_CDC_UNION_TYPE:
			if (buf[0] < sizeof(*(ctx->union_desc)))
				break;

			ctx->union_desc =
					(const struct usb_cdc_union_desc *)buf;

			ctx->control = FUNC13(dev->udev,
					ctx->union_desc->bMasterInterface0);
			ctx->data = FUNC13(dev->udev,
					ctx->union_desc->bSlaveInterface0);
			break;

		case USB_CDC_ETHERNET_TYPE:
			if (buf[0] < sizeof(*(ctx->ether_desc)))
				break;

			ctx->ether_desc =
					(const struct usb_cdc_ether_desc *)buf;
			dev->hard_mtu =
				FUNC9(ctx->ether_desc->wMaxSegmentSize);

			if (dev->hard_mtu < CDC_NCM_MIN_DATAGRAM_SIZE)
				dev->hard_mtu =	CDC_NCM_MIN_DATAGRAM_SIZE;
			else if (dev->hard_mtu > CDC_NCM_MAX_DATAGRAM_SIZE)
				dev->hard_mtu =	CDC_NCM_MAX_DATAGRAM_SIZE;
			break;

		case USB_CDC_NCM_TYPE:
			if (buf[0] < sizeof(*(ctx->func_desc)))
				break;

			ctx->func_desc = (const struct usb_cdc_ncm_desc *)buf;
			break;

		case USB_CDC_MBIM_TYPE:
			if (buf[0] < sizeof(*(ctx->mbim_desc)))
				break;

			ctx->mbim_desc = (const struct usb_cdc_mbim_desc *)buf;
			break;

		default:
			break;
		}
advance:
		/* advance to next descriptor */
		temp = buf[0];
		buf += temp;
		len -= temp;
	}

	/* some buggy devices have an IAD but no CDC Union */
	if (!ctx->union_desc && intf->intf_assoc && intf->intf_assoc->bInterfaceCount == 2) {
		ctx->control = intf;
		ctx->data = FUNC13(dev->udev, intf->cur_altsetting->desc.bInterfaceNumber + 1);
		FUNC4(&intf->dev, "CDC Union missing - got slave from IAD\n");
	}

	/* check if we got everything */
	if ((ctx->control == NULL) || (ctx->data == NULL) ||
	    ((!ctx->mbim_desc) && ((ctx->ether_desc == NULL) || (ctx->control != intf))))
		goto error;

	/* claim data interface, if different from control */
	if (ctx->data != ctx->control) {
		temp = FUNC11(driver, ctx->data, dev);
		if (temp)
			goto error;
	}

	iface_no = ctx->data->cur_altsetting->desc.bInterfaceNumber;

	/* reset data interface */
	temp = FUNC15(dev->udev, iface_no, 0);
	if (temp)
		goto error2;

	/* initialize data interface */
	if (FUNC3(ctx))
		goto error2;

	/* configure data interface */
	temp = FUNC15(dev->udev, iface_no, data_altsetting);
	if (temp)
		goto error2;

	FUNC1(ctx, ctx->data);
	FUNC1(ctx, ctx->control);

	if ((ctx->in_ep == NULL) || (ctx->out_ep == NULL) ||
	    (ctx->status_ep == NULL))
		goto error2;

	dev->net->ethtool_ops = &cdc_ncm_ethtool_ops;

	FUNC16(ctx->data, dev);
	FUNC16(ctx->control, dev);
	FUNC16(ctx->intf, dev);

	if (ctx->ether_desc) {
		temp = FUNC18(dev, ctx->ether_desc->iMACAddress);
		if (temp)
			goto error2;
		FUNC5(&dev->udev->dev, "MAC-Address: %pM\n", dev->net->dev_addr);
	}


	dev->in = FUNC14(dev->udev,
		ctx->in_ep->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
	dev->out = FUNC17(dev->udev,
		ctx->out_ep->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
	dev->status = ctx->status_ep;
	dev->rx_urb_size = ctx->rx_max;

	ctx->tx_speed = ctx->rx_speed = 0;
	return 0;

error2:
	FUNC16(ctx->control, NULL);
	FUNC16(ctx->data, NULL);
	if (ctx->data != ctx->control)
		FUNC12(driver, ctx->data);
error:
	FUNC2((struct cdc_ncm_ctx *)dev->data[0]);
	dev->data[0] = 0;
	FUNC5(&dev->udev->dev, "bind() failure\n");
	return -ENODEV;
}
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
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  bcdUSB; } ;
struct usb_device {TYPE_3__ descriptor; int /*<<< orphan*/  dev; } ;
struct lbtf_private {int /*<<< orphan*/  hw_reset_device; int /*<<< orphan*/  hw_prog_firmware; int /*<<< orphan*/  hw_host_to_card; } ;
struct if_usb_card {int /*<<< orphan*/  boot2_version; struct lbtf_private* priv; int /*<<< orphan*/  ep_out_buf; void* cmd_urb; void* tx_urb; void* rx_urb; void* ep_in_size; void* ep_out_size; void* ep_out; void* ep_in; struct usb_device* udev; int /*<<< orphan*/  fw_wq; int /*<<< orphan*/  fw_timeout; } ;
struct TYPE_5__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LBTF_DEB_MAIN ; 
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 int /*<<< orphan*/  MRVDRV_ETH_TX_PACKET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct if_usb_card*) ; 
 int /*<<< orphan*/  if_usb_fw_timeo ; 
 int /*<<< orphan*/  if_usb_host_to_card ; 
 int /*<<< orphan*/  if_usb_prog_firmware ; 
 int /*<<< orphan*/  if_usb_reset_device ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct if_usb_card* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct lbtf_private* FUNC5 (struct if_usb_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC13 (struct usb_endpoint_descriptor*) ; 
 void* FUNC14 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct usb_interface*,struct if_usb_card*) ; 

__attribute__((used)) static int FUNC17(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *udev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	struct lbtf_private *priv;
	struct if_usb_card *cardp;
	int i;

	FUNC6(LBTF_DEB_USB);
	udev = FUNC2(intf);

	cardp = FUNC4(sizeof(struct if_usb_card), GFP_KERNEL);
	if (!cardp)
		goto error;

	FUNC10(&cardp->fw_timeout, if_usb_fw_timeo, (unsigned long)cardp);
	FUNC1(&cardp->fw_wq);

	cardp->udev = udev;
	iface_desc = intf->cur_altsetting;

	FUNC8(&udev->dev, "bcdUSB = 0x%X bDeviceClass = 0x%X"
		     " bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\n",
		     FUNC9(udev->descriptor.bcdUSB),
		     udev->descriptor.bDeviceClass,
		     udev->descriptor.bDeviceSubClass,
		     udev->descriptor.bDeviceProtocol);

	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;
		if (FUNC12(endpoint)) {
			cardp->ep_in_size =
				FUNC9(endpoint->wMaxPacketSize);
			cardp->ep_in = FUNC14(endpoint);

			FUNC8(&udev->dev, "in_endpoint = %d\n",
				cardp->ep_in);
			FUNC8(&udev->dev, "Bulk in size is %d\n",
				cardp->ep_in_size);
		} else if (FUNC13(endpoint)) {
			cardp->ep_out_size =
				FUNC9(endpoint->wMaxPacketSize);
			cardp->ep_out = FUNC14(endpoint);

			FUNC8(&udev->dev, "out_endpoint = %d\n",
				cardp->ep_out);
			FUNC8(&udev->dev, "Bulk out size is %d\n",
				cardp->ep_out_size);
		}
	}
	if (!cardp->ep_out_size || !cardp->ep_in_size) {
		FUNC8(&udev->dev, "Endpoints not found\n");
		/* Endpoints not found */
		goto dealloc;
	}

	cardp->rx_urb = FUNC11(0, GFP_KERNEL);
	if (!cardp->rx_urb) {
		FUNC8(&udev->dev, "Rx URB allocation failed\n");
		goto dealloc;
	}

	cardp->tx_urb = FUNC11(0, GFP_KERNEL);
	if (!cardp->tx_urb) {
		FUNC8(&udev->dev, "Tx URB allocation failed\n");
		goto dealloc;
	}

	cardp->cmd_urb = FUNC11(0, GFP_KERNEL);
	if (!cardp->cmd_urb) {
		FUNC8(&udev->dev, "Cmd URB allocation failed\n");
		goto dealloc;
	}

	cardp->ep_out_buf = FUNC3(MRVDRV_ETH_TX_PACKET_BUFFER_SIZE,
				    GFP_KERNEL);
	if (!cardp->ep_out_buf) {
		FUNC8(&udev->dev, "Could not allocate buffer\n");
		goto dealloc;
	}

	priv = FUNC5(cardp, &udev->dev);
	if (!priv)
		goto dealloc;

	cardp->priv = priv;

	priv->hw_host_to_card = if_usb_host_to_card;
	priv->hw_prog_firmware = if_usb_prog_firmware;
	priv->hw_reset_device = if_usb_reset_device;
	cardp->boot2_version = udev->descriptor.bcdDevice;

	FUNC15(udev);
	FUNC16(intf, cardp);

	return 0;

dealloc:
	FUNC0(cardp);
error:
FUNC7(LBTF_DEB_MAIN);
	return -ENOMEM;
}
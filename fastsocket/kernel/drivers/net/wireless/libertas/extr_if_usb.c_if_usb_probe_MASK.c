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
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_5__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  bDeviceProtocol; int /*<<< orphan*/  bDeviceSubClass; int /*<<< orphan*/  bDeviceClass; int /*<<< orphan*/  bcdUSB; } ;
struct usb_device {TYPE_3__ descriptor; int /*<<< orphan*/  dev; } ;
struct lbs_private {int fw_ready; TYPE_4__* dev; int /*<<< orphan*/  reset_card; int /*<<< orphan*/  hw_host_to_card; } ;
struct if_usb_card {int /*<<< orphan*/  boot2_version; struct lbs_private* priv; int /*<<< orphan*/  ep_out_buf; void* tx_urb; void* rx_urb; void* ep_in_size; void* ep_out_size; void* ep_out; void* ep_in; struct usb_device* udev; int /*<<< orphan*/  fw_wq; int /*<<< orphan*/  fw_timeout; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOT_CMD_FW_BY_USB ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MRVDRV_ETH_TX_PACKET_BUFFER_SIZE ; 
 scalar_t__ FUNC0 (struct if_usb_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_lbs_flash_boot2 ; 
 int /*<<< orphan*/  dev_attr_lbs_flash_fw ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct if_usb_card*) ; 
 int /*<<< orphan*/  if_usb_fw_timeo ; 
 int /*<<< orphan*/  if_usb_host_to_card ; 
 int /*<<< orphan*/  FUNC3 (struct if_usb_card*) ; 
 int /*<<< orphan*/  if_usb_reset_olpc_card ; 
 int /*<<< orphan*/  FUNC4 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct if_usb_card* FUNC9 (int,int /*<<< orphan*/ ) ; 
 struct lbs_private* FUNC10 (struct if_usb_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  lbs_fw_name ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct lbs_private*) ; 
 scalar_t__ FUNC14 (struct lbs_private*) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 void* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC20 (struct usb_endpoint_descriptor*) ; 
 void* FUNC21 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_interface*,struct if_usb_card*) ; 

__attribute__((used)) static int FUNC24(struct usb_interface *intf,
			const struct usb_device_id *id)
{
	struct usb_device *udev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *endpoint;
	struct lbs_private *priv;
	struct if_usb_card *cardp;
	int i;

	udev = FUNC7(intf);

	cardp = FUNC9(sizeof(struct if_usb_card), GFP_KERNEL);
	if (!cardp) {
		FUNC12("Out of memory allocating private data.\n");
		goto error;
	}

	FUNC17(&cardp->fw_timeout, if_usb_fw_timeo, (unsigned long)cardp);
	FUNC6(&cardp->fw_wq);

	cardp->udev = udev;
	iface_desc = intf->cur_altsetting;

	FUNC11(&udev->dev, "bcdUSB = 0x%X bDeviceClass = 0x%X"
		     " bDeviceSubClass = 0x%X, bDeviceProtocol = 0x%X\n",
		     FUNC15(udev->descriptor.bcdUSB),
		     udev->descriptor.bDeviceClass,
		     udev->descriptor.bDeviceSubClass,
		     udev->descriptor.bDeviceProtocol);

	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		endpoint = &iface_desc->endpoint[i].desc;
		if (FUNC19(endpoint)) {
			cardp->ep_in_size = FUNC15(endpoint->wMaxPacketSize);
			cardp->ep_in = FUNC21(endpoint);

			FUNC11(&udev->dev, "in_endpoint = %d\n", cardp->ep_in);
			FUNC11(&udev->dev, "Bulk in size is %d\n", cardp->ep_in_size);

		} else if (FUNC20(endpoint)) {
			cardp->ep_out_size = FUNC15(endpoint->wMaxPacketSize);
			cardp->ep_out = FUNC21(endpoint);

			FUNC11(&udev->dev, "out_endpoint = %d\n", cardp->ep_out);
			FUNC11(&udev->dev, "Bulk out size is %d\n", cardp->ep_out_size);
		}
	}
	if (!cardp->ep_out_size || !cardp->ep_in_size) {
		FUNC11(&udev->dev, "Endpoints not found\n");
		goto dealloc;
	}
	if (!(cardp->rx_urb = FUNC18(0, GFP_KERNEL))) {
		FUNC11(&udev->dev, "Rx URB allocation failed\n");
		goto dealloc;
	}
	if (!(cardp->tx_urb = FUNC18(0, GFP_KERNEL))) {
		FUNC11(&udev->dev, "Tx URB allocation failed\n");
		goto dealloc;
	}
	cardp->ep_out_buf = FUNC8(MRVDRV_ETH_TX_PACKET_BUFFER_SIZE, GFP_KERNEL);
	if (!cardp->ep_out_buf) {
		FUNC11(&udev->dev, "Could not allocate buffer\n");
		goto dealloc;
	}

	/* Upload firmware */
	if (FUNC0(cardp, lbs_fw_name, BOOT_CMD_FW_BY_USB)) {
		FUNC11(&udev->dev, "FW upload failed\n");
		goto err_prog_firmware;
	}

	if (!(priv = FUNC10(cardp, &udev->dev)))
		goto err_prog_firmware;

	cardp->priv = priv;
	cardp->priv->fw_ready = 1;

	priv->hw_host_to_card = if_usb_host_to_card;
#ifdef CONFIG_OLPC
	if (machine_is_olpc())
		priv->reset_card = if_usb_reset_olpc_card;
#endif

	cardp->boot2_version = udev->descriptor.bcdDevice;

	FUNC5(cardp);

	if (FUNC14(priv))
		goto err_start_card;

	FUNC4(priv);

	FUNC22(udev);
	FUNC23(intf, cardp);

	if (FUNC1(&priv->dev->dev, &dev_attr_lbs_flash_fw))
		FUNC12("cannot register lbs_flash_fw attribute\n");

	if (FUNC1(&priv->dev->dev, &dev_attr_lbs_flash_boot2))
		FUNC12("cannot register lbs_flash_boot2 attribute\n");

	return 0;

err_start_card:
	FUNC13(priv);
err_prog_firmware:
	FUNC3(cardp);
dealloc:
	FUNC2(cardp);

error:
	return -ENOMEM;
}
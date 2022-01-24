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
struct usb_interface {int /*<<< orphan*/  dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct usb_device_id {int driver_info; } ;
struct TYPE_8__ {int /*<<< orphan*/  bcdDevice; } ;
struct usb_device {TYPE_4__ descriptor; } ;
struct sk_buff {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  driver_init; int /*<<< orphan*/  quirks; int /*<<< orphan*/  owner; int /*<<< orphan*/  notify; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct btusb_data* driver_data; int /*<<< orphan*/  type; } ;
struct btusb_data {int /*<<< orphan*/ * isoc; struct usb_device* udev; int /*<<< orphan*/  cmdreq_type; struct hci_dev* hdev; int /*<<< orphan*/  deferred; int /*<<< orphan*/  isoc_anchor; int /*<<< orphan*/  bulk_anchor; int /*<<< orphan*/  intr_anchor; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  txlock; int /*<<< orphan*/  waker; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct usb_interface* intf; struct usb_endpoint_descriptor* bulk_rx_ep; struct usb_endpoint_descriptor* bulk_tx_ep; struct usb_endpoint_descriptor* intr_ep; } ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_5__ {scalar_t__ bInterfaceNumber; int bNumEndpoints; } ;
struct TYPE_7__ {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int BTUSB_BCM92035 ; 
 int BTUSB_BROKEN_ISOC ; 
 int BTUSB_CSR ; 
 int BTUSB_DIGIANSWER ; 
 int BTUSB_IGNORE ; 
 int BTUSB_SNIFFER ; 
 int BTUSB_WRONG_SCO_MTU ; 
 int /*<<< orphan*/  FUNC0 (char*,struct usb_interface*,struct usb_device_id const*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_QUIRK_FIXUP_BUFFER_SIZE ; 
 int /*<<< orphan*/  HCI_QUIRK_NO_RESET ; 
 int /*<<< orphan*/  HCI_QUIRK_RAW_DEVICE ; 
 int /*<<< orphan*/  HCI_USB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  USB_TYPE_CLASS ; 
 int /*<<< orphan*/  USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  blacklist_table ; 
 struct sk_buff* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btusb_close ; 
 int /*<<< orphan*/  btusb_destruct ; 
 int /*<<< orphan*/  btusb_driver ; 
 int /*<<< orphan*/  btusb_flush ; 
 int /*<<< orphan*/  btusb_notify ; 
 int /*<<< orphan*/  btusb_open ; 
 int /*<<< orphan*/  btusb_send_frame ; 
 int /*<<< orphan*/  btusb_waker ; 
 int /*<<< orphan*/  btusb_work ; 
 int /*<<< orphan*/  disable_scofix ; 
 scalar_t__ force_scofix ; 
 struct hci_dev* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct hci_dev*) ; 
 int FUNC6 (struct hci_dev*) ; 
 scalar_t__ ignore_csr ; 
 scalar_t__ ignore_dga ; 
 scalar_t__ ignore_sniffer ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct btusb_data*) ; 
 struct btusb_data* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct btusb_data*) ; 
 scalar_t__ FUNC18 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC19 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC20 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/ * FUNC21 (struct usb_device*,int) ; 
 struct usb_device_id* FUNC22 (struct usb_interface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_interface*,struct btusb_data*) ; 

__attribute__((used)) static int FUNC24(struct usb_interface *intf,
				const struct usb_device_id *id)
{
	struct usb_endpoint_descriptor *ep_desc;
	struct btusb_data *data;
	struct hci_dev *hdev;
	int i, err;

	FUNC0("intf %p id %p", intf, id);

	/* interface numbers are hardcoded in the spec */
	if (intf->cur_altsetting->desc.bInterfaceNumber != 0)
		return -ENODEV;

	if (!id->driver_info) {
		const struct usb_device_id *match;
		match = FUNC22(intf, blacklist_table);
		if (match)
			id = match;
	}

	if (id->driver_info == BTUSB_IGNORE)
		return -ENODEV;

	if (ignore_dga && id->driver_info & BTUSB_DIGIANSWER)
		return -ENODEV;

	if (ignore_csr && id->driver_info & BTUSB_CSR)
		return -ENODEV;

	if (ignore_sniffer && id->driver_info & BTUSB_SNIFFER)
		return -ENODEV;

	data = FUNC10(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	for (i = 0; i < intf->cur_altsetting->desc.bNumEndpoints; i++) {
		ep_desc = &intf->cur_altsetting->endpoint[i].desc;

		if (!data->intr_ep && FUNC20(ep_desc)) {
			data->intr_ep = ep_desc;
			continue;
		}

		if (!data->bulk_tx_ep && FUNC19(ep_desc)) {
			data->bulk_tx_ep = ep_desc;
			continue;
		}

		if (!data->bulk_rx_ep && FUNC18(ep_desc)) {
			data->bulk_rx_ep = ep_desc;
			continue;
		}
	}

	if (!data->intr_ep || !data->bulk_tx_ep || !data->bulk_rx_ep) {
		FUNC9(data);
		return -ENODEV;
	}

	data->cmdreq_type = USB_TYPE_CLASS;

	data->udev = FUNC8(intf);
	data->intf = intf;

	FUNC16(&data->lock);

	FUNC1(&data->work, btusb_work);
	FUNC1(&data->waker, btusb_waker);
	FUNC16(&data->txlock);

	FUNC7(&data->tx_anchor);
	FUNC7(&data->intr_anchor);
	FUNC7(&data->bulk_anchor);
	FUNC7(&data->isoc_anchor);
	FUNC7(&data->deferred);

	hdev = FUNC4();
	if (!hdev) {
		FUNC9(data);
		return -ENOMEM;
	}

	hdev->type = HCI_USB;
	hdev->driver_data = data;

	data->hdev = hdev;

	FUNC2(hdev, &intf->dev);

	hdev->open     = btusb_open;
	hdev->close    = btusb_close;
	hdev->flush    = btusb_flush;
	hdev->send     = btusb_send_frame;
	hdev->destruct = btusb_destruct;
	hdev->notify   = btusb_notify;

	hdev->owner = THIS_MODULE;

	/* Interface numbers are hardcoded in the specification */
	data->isoc = FUNC21(data->udev, 1);

	if (!reset)
		FUNC13(HCI_QUIRK_NO_RESET, &hdev->quirks);

	if (force_scofix || id->driver_info & BTUSB_WRONG_SCO_MTU) {
		if (!disable_scofix)
			FUNC13(HCI_QUIRK_FIXUP_BUFFER_SIZE, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_BROKEN_ISOC)
		data->isoc = NULL;

	if (id->driver_info & BTUSB_DIGIANSWER) {
		data->cmdreq_type = USB_TYPE_VENDOR;
		FUNC13(HCI_QUIRK_NO_RESET, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_CSR) {
		struct usb_device *udev = data->udev;

		/* Old firmware would otherwise execute USB reset */
		if (FUNC11(udev->descriptor.bcdDevice) < 0x117)
			FUNC13(HCI_QUIRK_NO_RESET, &hdev->quirks);
	}

	if (id->driver_info & BTUSB_SNIFFER) {
		struct usb_device *udev = data->udev;

		/* New sniffer firmware has crippled HCI interface */
		if (FUNC11(udev->descriptor.bcdDevice) > 0x997)
			FUNC13(HCI_QUIRK_RAW_DEVICE, &hdev->quirks);

		data->isoc = NULL;
	}

	if (id->driver_info & BTUSB_BCM92035) {
		unsigned char cmd[] = { 0x3b, 0xfc, 0x01, 0x00 };
		struct sk_buff *skb;

		skb = FUNC3(sizeof(cmd), GFP_KERNEL);
		if (skb) {
			FUNC12(FUNC14(skb, sizeof(cmd)), cmd, sizeof(cmd));
			FUNC15(&hdev->driver_init, skb);
		}
	}

	if (data->isoc) {
		err = FUNC17(&btusb_driver,
							data->isoc, data);
		if (err < 0) {
			FUNC5(hdev);
			FUNC9(data);
			return err;
		}
	}

	err = FUNC6(hdev);
	if (err < 0) {
		FUNC5(hdev);
		FUNC9(data);
		return err;
	}

	FUNC23(intf, data);

	return 0;
}
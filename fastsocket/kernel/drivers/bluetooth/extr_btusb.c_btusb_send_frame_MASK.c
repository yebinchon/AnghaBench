#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_ctrlrequest {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct urb {unsigned int pipe; int /*<<< orphan*/  setup_packet; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_flags; int /*<<< orphan*/  interval; int /*<<< orphan*/  complete; struct sk_buff* context; int /*<<< orphan*/  dev; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; scalar_t__ dev; } ;
struct TYPE_9__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct TYPE_7__ {int acl_num; int sco_num; } ;
struct hci_dev {int /*<<< orphan*/  name; TYPE_4__ stat; TYPE_2__ conn_hash; int /*<<< orphan*/  flags; struct btusb_data* driver_data; } ;
struct btusb_data {int /*<<< orphan*/  udev; int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  waker; int /*<<< orphan*/  deferred; TYPE_3__* isoc_tx_ep; TYPE_1__* bulk_tx_ep; int /*<<< orphan*/  cmdreq_type; } ;
struct TYPE_10__ {int pkt_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  wMaxPacketSize; int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct TYPE_6__ {int /*<<< orphan*/  bEndpointAddress; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTUSB_MAX_ISOC_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*) ; 
 int EBUSY ; 
 int EILSEQ ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
 int /*<<< orphan*/  HCI_RUNNING ; 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  URB_ISO_ASAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  btusb_isoc_tx_complete ; 
 int /*<<< orphan*/  btusb_tx_complete ; 
 int FUNC5 (struct btusb_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct usb_ctrlrequest* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct urb*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct urb*,int /*<<< orphan*/ ,unsigned int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct urb*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct urb*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *skb)
{
	struct hci_dev *hdev = (struct hci_dev *) skb->dev;
	struct btusb_data *data = hdev->driver_data;
	struct usb_ctrlrequest *dr;
	struct urb *urb;
	unsigned int pipe;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC10(HCI_RUNNING, &hdev->flags))
		return -EBUSY;

	switch (FUNC4(skb)->pkt_type) {
	case HCI_COMMAND_PKT:
		urb = FUNC11(0, GFP_ATOMIC);
		if (!urb)
			return -ENOMEM;

		dr = FUNC7(sizeof(*dr), GFP_ATOMIC);
		if (!dr) {
			FUNC15(urb);
			return -ENOMEM;
		}

		dr->bRequestType = data->cmdreq_type;
		dr->bRequest     = 0;
		dr->wIndex       = 0;
		dr->wValue       = 0;
		dr->wLength      = FUNC2(skb->len);

		pipe = FUNC18(data->udev, 0x00);

		FUNC14(urb, data->udev, pipe, (void *) dr,
				skb->data, skb->len, btusb_tx_complete, skb);

		hdev->stat.cmd_tx++;
		break;

	case HCI_ACLDATA_PKT:
		if (!data->bulk_tx_ep || hdev->conn_hash.acl_num < 1)
			return -ENODEV;

		urb = FUNC11(0, GFP_ATOMIC);
		if (!urb)
			return -ENOMEM;

		pipe = FUNC17(data->udev,
					data->bulk_tx_ep->bEndpointAddress);

		FUNC13(urb, data->udev, pipe,
				skb->data, skb->len, btusb_tx_complete, skb);

		hdev->stat.acl_tx++;
		break;

	case HCI_SCODATA_PKT:
		if (!data->isoc_tx_ep || hdev->conn_hash.sco_num < 1)
			return -ENODEV;

		urb = FUNC11(BTUSB_MAX_ISOC_FRAMES, GFP_ATOMIC);
		if (!urb)
			return -ENOMEM;

		pipe = FUNC19(data->udev,
					data->isoc_tx_ep->bEndpointAddress);

		urb->dev      = data->udev;
		urb->pipe     = pipe;
		urb->context  = skb;
		urb->complete = btusb_isoc_tx_complete;
		urb->interval = data->isoc_tx_ep->bInterval;

		urb->transfer_flags  = URB_ISO_ASAP;
		urb->transfer_buffer = skb->data;
		urb->transfer_buffer_length = skb->len;

		FUNC3(urb, skb->len,
				FUNC8(data->isoc_tx_ep->wMaxPacketSize));

		hdev->stat.sco_tx++;
		goto skip_waking;

	default:
		return -EILSEQ;
	}

	err = FUNC5(data);
	if (err) {
		FUNC12(urb, &data->deferred);
		FUNC9(&data->waker);
		err = 0;
		goto done;
	}

skip_waking:
	FUNC12(urb, &data->tx_anchor);

	err = FUNC20(urb, GFP_ATOMIC);
	if (err < 0) {
		FUNC1("%s urb %p submission failed", hdev->name, urb);
		FUNC6(urb->setup_packet);
		FUNC21(urb);
	} else {
		FUNC16(data->udev);
	}

	FUNC15(urb);

done:
	return err;
}
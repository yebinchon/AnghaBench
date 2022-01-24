#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usb_ctrlrequest {int /*<<< orphan*/  wLength; int /*<<< orphan*/  wValue; int /*<<< orphan*/  wIndex; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bRequestType; } ;
struct urb {int /*<<< orphan*/  setup_packet; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; scalar_t__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {int /*<<< orphan*/  name; TYPE_1__ stat; int /*<<< orphan*/  flags; struct bpa10x_data* driver_data; } ;
struct bpa10x_data {int /*<<< orphan*/  tx_anchor; int /*<<< orphan*/  udev; } ;
struct TYPE_4__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,struct urb*) ; 
 int EBUSY ; 
 int EILSEQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
 int /*<<< orphan*/  HCI_RUNNING ; 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpa10x_tx_complete ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct usb_ctrlrequest* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct urb* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct urb*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct urb*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct urb*,int /*<<< orphan*/ ,unsigned int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct urb*) ; 
 unsigned int FUNC13 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct urb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct urb*) ; 

__attribute__((used)) static int FUNC17(struct sk_buff *skb)
{
	struct hci_dev *hdev = (struct hci_dev *) skb->dev;
	struct bpa10x_data *data = hdev->driver_data;
	struct usb_ctrlrequest *dr;
	struct urb *urb;
	unsigned int pipe;
	int err;

	FUNC0("%s", hdev->name);

	if (!FUNC7(HCI_RUNNING, &hdev->flags))
		return -EBUSY;

	urb = FUNC8(0, GFP_ATOMIC);
	if (!urb)
		return -ENOMEM;

	/* Prepend skb with frame type */
	*FUNC6(skb, 1) = FUNC3(skb)->pkt_type;

	switch (FUNC3(skb)->pkt_type) {
	case HCI_COMMAND_PKT:
		dr = FUNC5(sizeof(*dr), GFP_ATOMIC);
		if (!dr) {
			FUNC12(urb);
			return -ENOMEM;
		}

		dr->bRequestType = USB_TYPE_VENDOR;
		dr->bRequest     = 0;
		dr->wIndex       = 0;
		dr->wValue       = 0;
		dr->wLength      = FUNC2(skb->len);

		pipe = FUNC14(data->udev, 0x00);

		FUNC11(urb, data->udev, pipe, (void *) dr,
				skb->data, skb->len, bpa10x_tx_complete, skb);

		hdev->stat.cmd_tx++;
		break;

	case HCI_ACLDATA_PKT:
		pipe = FUNC13(data->udev, 0x02);

		FUNC10(urb, data->udev, pipe,
				skb->data, skb->len, bpa10x_tx_complete, skb);

		hdev->stat.acl_tx++;
		break;

	case HCI_SCODATA_PKT:
		pipe = FUNC13(data->udev, 0x02);

		FUNC10(urb, data->udev, pipe,
				skb->data, skb->len, bpa10x_tx_complete, skb);

		hdev->stat.sco_tx++;
		break;

	default:
		FUNC12(urb);
		return -EILSEQ;
	}

	FUNC9(urb, &data->tx_anchor);

	err = FUNC15(urb, GFP_ATOMIC);
	if (err < 0) {
		FUNC1("%s urb %p submission failed", hdev->name, urb);
		FUNC4(urb->setup_packet);
		FUNC16(urb);
	}

	FUNC12(urb);

	return 0;
}
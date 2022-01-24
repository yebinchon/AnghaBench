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
struct sk_buff {int len; void* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; struct bfusb_data* driver_data; int /*<<< orphan*/  flags; } ;
struct bfusb_data {int bulk_pkt_size; int /*<<< orphan*/  lock; int /*<<< orphan*/  transmit_q; } ;
struct TYPE_4__ {int pkt_type; } ;

/* Variables and functions */
 int BFUSB_MAX_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_dev*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
 int /*<<< orphan*/  HCI_RUNNING ; 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  FUNC2 (struct bfusb_data*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uint ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb)
{
	struct hci_dev *hdev = (struct hci_dev *) skb->dev;
	struct bfusb_data *data;
	struct sk_buff *nskb;
	unsigned char buf[3];
	int sent = 0, size, count;

	FUNC0("hdev %p skb %p type %d len %d", hdev, skb, FUNC3(skb)->pkt_type, skb->len);

	if (!hdev) {
		FUNC1("Frame for unknown HCI device (hdev=NULL)");
		return -ENODEV;
	}

	if (!FUNC14(HCI_RUNNING, &hdev->flags))
		return -EBUSY;

	data = hdev->driver_data;

	switch (FUNC3(skb)->pkt_type) {
	case HCI_COMMAND_PKT:
		hdev->stat.cmd_tx++;
		break;
	case HCI_ACLDATA_PKT:
		hdev->stat.acl_tx++;
		break;
	case HCI_SCODATA_PKT:
		hdev->stat.sco_tx++;
		break;
	};

	/* Prepend skb with frame type */
	FUNC6(FUNC11(skb, 1), &FUNC3(skb)->pkt_type, 1);

	count = skb->len;

	/* Max HCI frame size seems to be 1511 + 1 */
	nskb = FUNC4(count + 32, GFP_ATOMIC);
	if (!nskb) {
		FUNC1("Can't allocate memory for new packet");
		return -ENOMEM;
	}

	nskb->dev = (void *) data;

	while (count) {
		size = FUNC7(uint, count, BFUSB_MAX_BLOCK_SIZE);

		buf[0] = 0xc1 | ((sent == 0) ? 0x04 : 0) | ((count == size) ? 0x08 : 0);
		buf[1] = 0x00;
		buf[2] = (size == BFUSB_MAX_BLOCK_SIZE) ? 0 : size;

		FUNC6(FUNC12(nskb, 3), buf, 3);
		FUNC10(skb, sent, FUNC12(nskb, size), size);

		sent  += size;
		count -= size;
	}

	/* Don't send frame with multiple size of bulk max packet */
	if ((nskb->len % data->bulk_pkt_size) == 0) {
		buf[0] = 0xdd;
		buf[1] = 0x00;
		FUNC6(FUNC12(nskb, 2), buf, 2);
	}

	FUNC8(&data->lock);

	FUNC13(&data->transmit_q, nskb);
	FUNC2(data);

	FUNC9(&data->lock);

	FUNC5(skb);

	return 0;
}
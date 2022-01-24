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
struct sk_buff {scalar_t__ cb; void* dev; } ;
struct hci_vendor_hdr {int /*<<< orphan*/  dlen; } ;
struct hci_sco_hdr {int dlen; } ;
struct hci_event_hdr {int plen; } ;
struct TYPE_3__ {int byte_rx; } ;
struct hci_dev {int /*<<< orphan*/  name; TYPE_1__ stat; struct bpa10x_data* driver_data; } ;
struct hci_acl_hdr {int /*<<< orphan*/  dlen; } ;
struct bpa10x_data {struct sk_buff** rx_skb; } ;
typedef  int __u8 ;
struct TYPE_4__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EILSEQ ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 131 
 int HCI_ACL_HDR_SIZE ; 
 int HCI_EVENT_HDR_SIZE ; 
#define  HCI_EVENT_PKT 130 
#define  HCI_SCODATA_PKT 129 
 int HCI_SCO_HDR_SIZE ; 
 int HCI_VENDOR_HDR_SIZE ; 
#define  HCI_VENDOR_PKT 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC9(struct hci_dev *hdev, int queue, void *buf, int count)
{
	struct bpa10x_data *data = hdev->driver_data;

	FUNC0("%s queue %d buffer %p count %d", hdev->name,
							queue, buf, count);

	if (queue < 0 || queue > 1)
		return -EILSEQ;

	hdev->stat.byte_rx += count;

	while (count) {
		struct sk_buff *skb = data->rx_skb[queue];
		struct { __u8 type; int expect; } *scb;
		int type, len = 0;

		if (!skb) {
			/* Start of the frame */

			type = *((__u8 *) buf);
			count--; buf++;

			switch (type) {
			case HCI_EVENT_PKT:
				if (count >= HCI_EVENT_HDR_SIZE) {
					struct hci_event_hdr *h = buf;
					len = HCI_EVENT_HDR_SIZE + h->plen;
				} else
					return -EILSEQ;
				break;

			case HCI_ACLDATA_PKT:
				if (count >= HCI_ACL_HDR_SIZE) {
					struct hci_acl_hdr *h = buf;
					len = HCI_ACL_HDR_SIZE +
							FUNC2(h->dlen);
				} else
					return -EILSEQ;
				break;

			case HCI_SCODATA_PKT:
				if (count >= HCI_SCO_HDR_SIZE) {
					struct hci_sco_hdr *h = buf;
					len = HCI_SCO_HDR_SIZE + h->dlen;
				} else
					return -EILSEQ;
				break;

			case HCI_VENDOR_PKT:
				if (count >= HCI_VENDOR_HDR_SIZE) {
					struct hci_vendor_hdr *h = buf;
					len = HCI_VENDOR_HDR_SIZE +
							FUNC2(h->dlen);
				} else
					return -EILSEQ;
				break;
			}

			skb = FUNC4(len, GFP_ATOMIC);
			if (!skb) {
				FUNC1("%s no memory for packet", hdev->name);
				return -ENOMEM;
			}

			skb->dev = (void *) hdev;

			data->rx_skb[queue] = skb;

			scb = (void *) skb->cb;
			scb->type = type;
			scb->expect = len;
		} else {
			/* Continuation */

			scb = (void *) skb->cb;
			len = scb->expect;
		}

		len = FUNC7(len, count);

		FUNC6(FUNC8(skb, len), buf, len);

		scb->expect -= len;

		if (scb->expect == 0) {
			/* Complete frame */

			data->rx_skb[queue] = NULL;

			FUNC3(skb)->pkt_type = scb->type;
			FUNC5(skb);
		}

		count -= len; buf += len;
	}

	return 0;
}
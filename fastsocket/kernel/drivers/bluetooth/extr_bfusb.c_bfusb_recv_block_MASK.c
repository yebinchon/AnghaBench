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
struct sk_buff {void* dev; } ;
struct hci_sco_hdr {int dlen; } ;
struct hci_event_hdr {int plen; } ;
struct hci_acl_hdr {int /*<<< orphan*/  dlen; } ;
struct bfusb_data {struct sk_buff* reassembly; TYPE_1__* hdev; } ;
struct TYPE_4__ {unsigned char pkt_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EILSEQ ; 
 int EIO ; 
 int ENOMEM ; 
 int EPROTO ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 130 
 int HCI_ACL_HDR_SIZE ; 
 int HCI_EVENT_HDR_SIZE ; 
#define  HCI_EVENT_PKT 129 
#define  HCI_SCODATA_PKT 128 
 int HCI_SCO_HDR_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 

__attribute__((used)) static inline int FUNC9(struct bfusb_data *data, int hdr, unsigned char *buf, int len)
{
	FUNC0("bfusb %p hdr 0x%02x data %p len %d", data, hdr, buf, len);

	if (hdr & 0x10) {
		FUNC1("%s error in block", data->hdev->name);
		FUNC6(data->reassembly);
		data->reassembly = NULL;
		return -EIO;
	}

	if (hdr & 0x04) {
		struct sk_buff *skb;
		unsigned char pkt_type;
		int pkt_len = 0;

		if (data->reassembly) {
			FUNC1("%s unexpected start block", data->hdev->name);
			FUNC6(data->reassembly);
			data->reassembly = NULL;
		}

		if (len < 1) {
			FUNC1("%s no packet type found", data->hdev->name);
			return -EPROTO;
		}

		pkt_type = *buf++; len--;

		switch (pkt_type) {
		case HCI_EVENT_PKT:
			if (len >= HCI_EVENT_HDR_SIZE) {
				struct hci_event_hdr *hdr = (struct hci_event_hdr *) buf;
				pkt_len = HCI_EVENT_HDR_SIZE + hdr->plen;
			} else {
				FUNC1("%s event block is too short", data->hdev->name);
				return -EILSEQ;
			}
			break;

		case HCI_ACLDATA_PKT:
			if (len >= HCI_ACL_HDR_SIZE) {
				struct hci_acl_hdr *hdr = (struct hci_acl_hdr *) buf;
				pkt_len = HCI_ACL_HDR_SIZE + FUNC2(hdr->dlen);
			} else {
				FUNC1("%s data block is too short", data->hdev->name);
				return -EILSEQ;
			}
			break;

		case HCI_SCODATA_PKT:
			if (len >= HCI_SCO_HDR_SIZE) {
				struct hci_sco_hdr *hdr = (struct hci_sco_hdr *) buf;
				pkt_len = HCI_SCO_HDR_SIZE + hdr->dlen;
			} else {
				FUNC1("%s audio block is too short", data->hdev->name);
				return -EILSEQ;
			}
			break;
		}

		skb = FUNC4(pkt_len, GFP_ATOMIC);
		if (!skb) {
			FUNC1("%s no memory for the packet", data->hdev->name);
			return -ENOMEM;
		}

		skb->dev = (void *) data->hdev;
		FUNC3(skb)->pkt_type = pkt_type;

		data->reassembly = skb;
	} else {
		if (!data->reassembly) {
			FUNC1("%s unexpected continuation block", data->hdev->name);
			return -EIO;
		}
	}

	if (len > 0)
		FUNC7(FUNC8(data->reassembly, len), buf, len);

	if (hdr & 0x08) {
		FUNC5(data->reassembly);
		data->reassembly = NULL;
	}

	return 0;
}
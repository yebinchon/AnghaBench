#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
struct hci_sco_hdr {int dlen; } ;
struct hci_event_hdr {scalar_t__ plen; } ;
struct hci_acl_hdr {int /*<<< orphan*/  dlen; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_23__ {int rx_state; scalar_t__ rx_count; TYPE_4__* hdev; TYPE_6__* rx_skb; int /*<<< orphan*/  tx_state; TYPE_2__* p_dev; } ;
typedef  TYPE_5__ bluecard_info_t ;
struct TYPE_24__ {void* dev; } ;
struct TYPE_21__ {int byte_rx; int /*<<< orphan*/  err_rx; } ;
struct TYPE_22__ {TYPE_3__ stat; } ;
struct TYPE_19__ {unsigned int BasePort1; } ;
struct TYPE_20__ {TYPE_1__ io; } ;
struct TYPE_18__ {unsigned char pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
#define  HCI_ACLDATA_PKT 134 
 scalar_t__ HCI_ACL_HDR_SIZE ; 
 scalar_t__ HCI_EVENT_HDR_SIZE ; 
#define  HCI_EVENT_PKT 133 
 int /*<<< orphan*/  HCI_MAX_FRAME_SIZE ; 
#define  HCI_SCODATA_PKT 132 
 scalar_t__ HCI_SCO_HDR_SIZE ; 
#define  RECV_WAIT_ACL_HEADER 131 
#define  RECV_WAIT_DATA 130 
#define  RECV_WAIT_EVENT_HEADER 129 
 int RECV_WAIT_PACKET_TYPE ; 
#define  RECV_WAIT_SCO_HEADER 128 
 int /*<<< orphan*/  XMIT_BUF_ONE_READY ; 
 int /*<<< orphan*/  XMIT_BUF_TWO_READY ; 
 int /*<<< orphan*/  XMIT_SENDING_READY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (unsigned int,unsigned int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_13__* FUNC5 (TYPE_6__*) ; 
 TYPE_6__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hci_acl_hdr* FUNC7 (TYPE_6__*) ; 
 struct hci_event_hdr* FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 struct hci_sco_hdr* FUNC10 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC13 (TYPE_6__*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(bluecard_info_t *info, unsigned int offset)
{
	unsigned int iobase;
	unsigned char buf[31];
	int i, len;

	if (!info) {
		FUNC0("Unknown device");
		return;
	}

	iobase = info->p_dev->io.BasePort1;

	if (FUNC14(XMIT_SENDING_READY, &(info->tx_state)))
		FUNC2(info);

	len = FUNC3(iobase, offset, buf, sizeof(buf));

	for (i = 0; i < len; i++) {

		/* Allocate packet */
		if (info->rx_skb == NULL) {
			info->rx_state = RECV_WAIT_PACKET_TYPE;
			info->rx_count = 0;
			if (!(info->rx_skb = FUNC6(HCI_MAX_FRAME_SIZE, GFP_ATOMIC))) {
				FUNC0("Can't allocate mem for new packet");
				return;
			}
		}

		if (info->rx_state == RECV_WAIT_PACKET_TYPE) {

			info->rx_skb->dev = (void *) info->hdev;
			FUNC5(info->rx_skb)->pkt_type = buf[i];

			switch (FUNC5(info->rx_skb)->pkt_type) {

			case 0x00:
				/* init packet */
				if (offset != 0x00) {
					FUNC12(XMIT_BUF_ONE_READY, &(info->tx_state));
					FUNC12(XMIT_BUF_TWO_READY, &(info->tx_state));
					FUNC12(XMIT_SENDING_READY, &(info->tx_state));
					FUNC4(info);
				}

				FUNC11(info->rx_skb);
				info->rx_skb = NULL;
				break;

			case HCI_EVENT_PKT:
				info->rx_state = RECV_WAIT_EVENT_HEADER;
				info->rx_count = HCI_EVENT_HDR_SIZE;
				break;

			case HCI_ACLDATA_PKT:
				info->rx_state = RECV_WAIT_ACL_HEADER;
				info->rx_count = HCI_ACL_HDR_SIZE;
				break;

			case HCI_SCODATA_PKT:
				info->rx_state = RECV_WAIT_SCO_HEADER;
				info->rx_count = HCI_SCO_HDR_SIZE;
				break;

			default:
				/* unknown packet */
				FUNC0("Unknown HCI packet with type 0x%02x received", FUNC5(info->rx_skb)->pkt_type);
				info->hdev->stat.err_rx++;

				FUNC11(info->rx_skb);
				info->rx_skb = NULL;
				break;

			}

		} else {

			*FUNC13(info->rx_skb, 1) = buf[i];
			info->rx_count--;

			if (info->rx_count == 0) {

				int dlen;
				struct hci_event_hdr *eh;
				struct hci_acl_hdr *ah;
				struct hci_sco_hdr *sh;

				switch (info->rx_state) {

				case RECV_WAIT_EVENT_HEADER:
					eh = FUNC8(info->rx_skb);
					info->rx_state = RECV_WAIT_DATA;
					info->rx_count = eh->plen;
					break;

				case RECV_WAIT_ACL_HEADER:
					ah = FUNC7(info->rx_skb);
					dlen = FUNC1(ah->dlen);
					info->rx_state = RECV_WAIT_DATA;
					info->rx_count = dlen;
					break;

				case RECV_WAIT_SCO_HEADER:
					sh = FUNC10(info->rx_skb);
					info->rx_state = RECV_WAIT_DATA;
					info->rx_count = sh->dlen;
					break;

				case RECV_WAIT_DATA:
					FUNC9(info->rx_skb);
					info->rx_skb = NULL;
					break;

				}

			}

		}


	}

	info->hdev->stat.byte_rx += len;
}
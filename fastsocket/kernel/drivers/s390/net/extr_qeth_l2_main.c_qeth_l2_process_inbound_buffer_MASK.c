#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct sk_buff {unsigned int len; scalar_t__ cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  dev; int /*<<< orphan*/  pkt_type; } ;
struct TYPE_15__ {int id; } ;
struct TYPE_16__ {TYPE_4__ l2; } ;
struct qeth_hdr {TYPE_5__ hdr; } ;
struct TYPE_11__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_20__ {int /*<<< orphan*/  (* data_cb ) (struct sk_buff*) ;} ;
struct TYPE_19__ {int /*<<< orphan*/  type; } ;
struct TYPE_18__ {int /*<<< orphan*/  pkt_seqno; } ;
struct TYPE_17__ {int /*<<< orphan*/  checksum_type; } ;
struct TYPE_14__ {size_t b_index; int /*<<< orphan*/  e_offset; int /*<<< orphan*/  b_element; } ;
struct TYPE_13__ {TYPE_1__* in_q; } ;
struct qeth_card {TYPE_10__ stats; TYPE_9__ osn_info; TYPE_8__ info; TYPE_7__ seqno; TYPE_6__ options; int /*<<< orphan*/  dev; TYPE_3__ rx; TYPE_2__ qdio; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_12__ {int /*<<< orphan*/ * bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  NO_CHECKSUMMING ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  QETH_CARD_TYPE_OSN ; 
 int /*<<< orphan*/  QETH_DBF_CTRL_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct qeth_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
#define  QETH_HEADER_TYPE_LAYER2 129 
#define  QETH_HEADER_TYPE_OSN 128 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct qeth_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qeth_hdr**) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct qeth_hdr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct qeth_card *card,
				int budget, int *done)
{
	int work_done = 0;
	struct sk_buff *skb;
	struct qeth_hdr *hdr;
	unsigned int len;

	*done = 0;
	FUNC0(!budget);
	while (budget) {
		skb = FUNC7(card,
			&card->qdio.in_q->bufs[card->rx.b_index],
			&card->rx.b_element, &card->rx.e_offset, &hdr);
		if (!skb) {
			*done = 1;
			break;
		}
		skb->dev = card->dev;
		switch (hdr->hdr.l2.id) {
		case QETH_HEADER_TYPE_LAYER2:
			skb->pkt_type = PACKET_HOST;
			skb->protocol = FUNC4(skb, skb->dev);
			if (card->options.checksum_type == NO_CHECKSUMMING)
				skb->ip_summed = CHECKSUM_UNNECESSARY;
			else
				skb->ip_summed = CHECKSUM_NONE;
			if (skb->protocol == FUNC5(ETH_P_802_2))
				*((__u32 *)skb->cb) = ++card->seqno.pkt_seqno;
			len = skb->len;
			FUNC6(skb);
			break;
		case QETH_HEADER_TYPE_OSN:
			if (card->info.type == QETH_CARD_TYPE_OSN) {
				FUNC9(skb, sizeof(struct qeth_hdr));
				FUNC8(skb, hdr,
						sizeof(struct qeth_hdr));
				len = skb->len;
				card->osn_info.data_cb(skb);
				break;
			}
			/* else unknown */
		default:
			FUNC3(skb);
			FUNC2(TRACE, 3, "inbunkno");
			FUNC1(CTRL, 3, hdr, QETH_DBF_CTRL_LEN);
			continue;
		}
		work_done++;
		budget--;
		card->stats.rx_packets++;
		card->stats.rx_bytes += len;
	}
	return work_done;
}
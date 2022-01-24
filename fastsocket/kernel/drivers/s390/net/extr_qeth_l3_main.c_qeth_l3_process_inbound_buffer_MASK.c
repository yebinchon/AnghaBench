#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct sk_buff {unsigned int len; TYPE_10__* dev; int /*<<< orphan*/  protocol; void* pkt_type; int /*<<< orphan*/  mac_header; scalar_t__ data; } ;
struct TYPE_16__ {int id; } ;
struct TYPE_17__ {TYPE_4__ l3; } ;
struct qeth_hdr {TYPE_5__ hdr; } ;
struct TYPE_21__ {unsigned int rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_20__ {int /*<<< orphan*/  sniffer; } ;
struct TYPE_18__ {int /*<<< orphan*/  type; } ;
struct TYPE_15__ {size_t b_index; int /*<<< orphan*/  e_offset; int /*<<< orphan*/  b_element; } ;
struct TYPE_14__ {TYPE_1__* in_q; } ;
struct qeth_card {TYPE_9__ stats; int /*<<< orphan*/  napi; int /*<<< orphan*/  vlangrp; TYPE_8__ options; TYPE_10__* dev; TYPE_6__ info; TYPE_3__ rx; TYPE_2__ qdio; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_19__ {int /*<<< orphan*/  (* create ) (struct sk_buff*,TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {int /*<<< orphan*/ * bufs; } ;
struct TYPE_12__ {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; TYPE_7__* header_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  ETH_P_AF_IUCV ; 
 int /*<<< orphan*/  NET_SKB_PAD ; 
 void* PACKET_HOST ; 
 int /*<<< orphan*/  QETH_CARD_TYPE_IQD ; 
 int /*<<< orphan*/  QETH_DBF_CTRL_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,struct qeth_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
#define  QETH_HEADER_TYPE_LAYER2 129 
#define  QETH_HEADER_TYPE_LAYER3 128 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct qeth_card*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qeth_hdr**) ; 
 int FUNC8 (struct qeth_card*,struct sk_buff*,struct qeth_hdr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC11(struct qeth_card *card,
				int budget, int *done)
{
	int work_done = 0;
	struct sk_buff *skb;
	struct qeth_hdr *hdr;
	__u16 vlan_tag = 0;
	int is_vlan;
	unsigned int len;
	__u16 magic;

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
		switch (hdr->hdr.l3.id) {
		case QETH_HEADER_TYPE_LAYER3:
			magic = *(__u16 *)skb->data;
			if ((card->info.type == QETH_CARD_TYPE_IQD) &&
			    (magic == ETH_P_AF_IUCV)) {
				skb->protocol = ETH_P_AF_IUCV;
				skb->pkt_type = PACKET_HOST;
				skb->mac_header = NET_SKB_PAD;
				skb->dev = card->dev;
				len = skb->len;
				card->dev->header_ops->create(skb, card->dev, 0,
					card->dev->dev_addr, "FAKELL",
					card->dev->addr_len);
				FUNC6(skb);
			} else {
				is_vlan = FUNC8(card, skb, hdr,
							      &vlan_tag);
				len = skb->len;
				if (is_vlan && !card->options.sniffer)
					FUNC10(&card->napi,
						card->vlangrp, vlan_tag, skb);
				else
					FUNC5(&card->napi, skb);
			}
			break;
		case QETH_HEADER_TYPE_LAYER2: /* for HiperSockets sniffer */
			skb->pkt_type = PACKET_HOST;
			skb->protocol = FUNC4(skb, skb->dev);
			len = skb->len;
			FUNC6(skb);
			break;
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
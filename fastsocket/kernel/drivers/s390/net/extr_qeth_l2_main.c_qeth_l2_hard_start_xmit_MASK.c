#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ protocol; scalar_t__ data; } ;
struct qeth_qdio_out_q {int dummy; } ;
struct TYPE_9__ {int pkt_length; } ;
struct TYPE_10__ {TYPE_2__ l2; } ;
struct qeth_hdr {TYPE_3__ hdr; } ;
struct TYPE_14__ {int tx_bytes; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_carrier_errors; } ;
struct TYPE_13__ {scalar_t__ outbound_start_time; int /*<<< orphan*/  outbound_time; int /*<<< orphan*/  outbound_cnt; } ;
struct TYPE_12__ {scalar_t__ performance_stats; } ;
struct TYPE_11__ {scalar_t__ type; } ;
struct TYPE_8__ {struct qeth_qdio_out_q** out_qs; } ;
struct qeth_card {scalar_t__ state; TYPE_7__ stats; TYPE_6__ perf_stats; TYPE_5__ options; TYPE_4__ info; int /*<<< orphan*/  lan_online; TYPE_1__ qdio; } ;
struct net_device {struct qeth_card* ml_priv; } ;

/* Variables and functions */
 scalar_t__ CARD_STATE_UP ; 
 int EBUSY ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ QETH_CARD_TYPE_IQD ; 
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct qeth_hdr* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct qeth_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  qeth_core_header_cache ; 
 int FUNC7 (struct qeth_card*,struct qeth_qdio_out_q*,struct sk_buff*,struct qeth_hdr*,int) ; 
 int FUNC8 (struct qeth_card*,struct qeth_qdio_out_q*,struct sk_buff*,struct qeth_hdr*,int,int,int) ; 
 int FUNC9 (struct qeth_card*,void*,struct sk_buff*,int) ; 
 int FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 () ; 
 size_t FUNC12 (struct qeth_card*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct qeth_card*,struct qeth_hdr*,struct sk_buff*,int,int) ; 
 int FUNC14 (struct qeth_card*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC20(struct sk_buff *skb, struct net_device *dev)
{
	int rc;
	struct qeth_hdr *hdr = NULL;
	int elements = 0;
	struct qeth_card *card = dev->ml_priv;
	struct sk_buff *new_skb = skb;
	int ipv = FUNC10(skb);
	int cast_type = FUNC14(card, skb);
	struct qeth_qdio_out_q *queue = card->qdio.out_qs
		[FUNC12(card, skb, ipv, cast_type)];
	int tx_bytes = skb->len;
	int data_offset = -1;
	int elements_needed = 0;
	int hd_len = 0;

	if ((card->state != CARD_STATE_UP) || !card->lan_online) {
		card->stats.tx_carrier_errors++;
		goto tx_drop;
	}

	if ((card->info.type == QETH_CARD_TYPE_OSN) &&
	    (skb->protocol == FUNC1(ETH_P_IPV6)))
		goto tx_drop;

	if (card->options.performance_stats) {
		card->perf_stats.outbound_cnt++;
		card->perf_stats.outbound_start_time = FUNC11();
	}
	FUNC5(dev);

	if (card->info.type == QETH_CARD_TYPE_OSN)
		hdr = (struct qeth_hdr *)skb->data;
	else {
		if (card->info.type == QETH_CARD_TYPE_IQD) {
			new_skb = skb;
			data_offset = ETH_HLEN;
			hd_len = ETH_HLEN;
			hdr = FUNC2(qeth_core_header_cache,
						GFP_ATOMIC);
			if (!hdr)
				goto tx_drop;
			elements_needed++;
			FUNC18(new_skb);
			FUNC13(card, hdr, new_skb, ipv, cast_type);
			hdr->hdr.l2.pkt_length = new_skb->len;
			FUNC4(((char *)hdr) + sizeof(struct qeth_hdr),
				FUNC15(new_skb), ETH_HLEN);
		} else {
			/* create a clone with writeable headroom */
			new_skb = FUNC17(skb,
						sizeof(struct qeth_hdr));
			if (!new_skb)
				goto tx_drop;
			hdr = (struct qeth_hdr *)FUNC16(new_skb,
						sizeof(struct qeth_hdr));
			FUNC19(new_skb, sizeof(struct qeth_hdr));
			FUNC13(card, hdr, new_skb, ipv, cast_type);
		}
	}

	elements = FUNC9(card, (void *)hdr, new_skb,
						elements_needed);
	if (!elements) {
		if (data_offset >= 0)
			FUNC3(qeth_core_header_cache, hdr);
		goto tx_drop;
	}

	if (card->info.type != QETH_CARD_TYPE_IQD)
		rc = FUNC7(card, queue, new_skb, hdr,
					 elements);
	else
		rc = FUNC8(card, queue, new_skb, hdr,
					elements, data_offset, hd_len);
	if (!rc) {
		card->stats.tx_packets++;
		card->stats.tx_bytes += tx_bytes;
		if (new_skb != skb)
			FUNC0(skb);
		rc = NETDEV_TX_OK;
	} else {
		if (data_offset >= 0)
			FUNC3(qeth_core_header_cache, hdr);

		if (rc == -EBUSY) {
			if (new_skb != skb)
				FUNC0(new_skb);
			return NETDEV_TX_BUSY;
		} else
			goto tx_drop;
	}

	FUNC6(dev);
	if (card->options.performance_stats)
		card->perf_stats.outbound_time += FUNC11() -
			card->perf_stats.outbound_start_time;
	return rc;

tx_drop:
	card->stats.tx_dropped++;
	card->stats.tx_errors++;
	if ((new_skb != skb) && new_skb)
		FUNC0(new_skb);
	FUNC0(skb);
	FUNC6(dev);
	return NETDEV_TX_OK;
}
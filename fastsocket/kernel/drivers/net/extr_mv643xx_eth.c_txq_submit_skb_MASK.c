#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct tx_queue {scalar_t__ tx_curr_desc; scalar_t__ tx_ring_size; int index; int tx_desc_count; int /*<<< orphan*/  tx_skb; struct tx_desc* tx_desc_area; } ;
struct tx_desc {int byte_cnt; int cmd_sts; int /*<<< orphan*/  buf_ptr; scalar_t__ l4i_chk; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ protocol; int len; scalar_t__ data; } ;
struct mv643xx_eth_private {int work_tx_end; TYPE_2__* dev; } ;
struct TYPE_12__ {int ihl; int protocol; } ;
struct TYPE_11__ {int nr_frags; } ;
struct TYPE_10__ {int /*<<< orphan*/  check; } ;
struct TYPE_9__ {int /*<<< orphan*/  check; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int BUFFER_OWNED_BY_DMA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ETH_HLEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int GEN_CRC ; 
 int GEN_IP_V4_CHECKSUM ; 
 int GEN_TCP_UDP_CHECKSUM ; 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int MAC_HDR_EXTRA_4_BYTES ; 
 int MAC_HDR_EXTRA_8_BYTES ; 
 int TX_ENABLE_INTERRUPT ; 
 int TX_FIRST_DESC ; 
 int TX_IHL_SHIFT ; 
 int TX_LAST_DESC ; 
 int UDP_FRAME ; 
 int ZERO_PADDING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*) ; 
 int FUNC9 (struct sk_buff*) ; 
 TYPE_5__* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct tx_queue*) ; 
 int /*<<< orphan*/  FUNC14 (struct tx_queue*,struct sk_buff*) ; 
 struct mv643xx_eth_private* FUNC15 (struct tx_queue*) ; 
 TYPE_3__* FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 () ; 

__attribute__((used)) static int FUNC19(struct tx_queue *txq, struct sk_buff *skb)
{
	struct mv643xx_eth_private *mp = FUNC15(txq);
	int nr_frags = FUNC10(skb)->nr_frags;
	int tx_index;
	struct tx_desc *desc;
	u32 cmd_sts;
	u16 l4i_chk;
	int length;

	cmd_sts = TX_FIRST_DESC | GEN_CRC | BUFFER_OWNED_BY_DMA;
	l4i_chk = 0;

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		int tag_bytes;

		FUNC1(skb->protocol != FUNC4(ETH_P_IP) &&
		       skb->protocol != FUNC4(ETH_P_8021Q));

		tag_bytes = (void *)FUNC5(skb) - (void *)skb->data - ETH_HLEN;
		if (FUNC17(tag_bytes & ~12)) {
			if (FUNC8(skb) == 0)
				goto no_csum;
			FUNC6(skb);
			return 1;
		}

		if (tag_bytes & 4)
			cmd_sts |= MAC_HDR_EXTRA_4_BYTES;
		if (tag_bytes & 8)
			cmd_sts |= MAC_HDR_EXTRA_8_BYTES;

		cmd_sts |= GEN_TCP_UDP_CHECKSUM |
			   GEN_IP_V4_CHECKSUM   |
			   FUNC5(skb)->ihl << TX_IHL_SHIFT;

		switch (FUNC5(skb)->protocol) {
		case IPPROTO_UDP:
			cmd_sts |= UDP_FRAME;
			l4i_chk = FUNC7(FUNC11(FUNC16(skb)->check));
			break;
		case IPPROTO_TCP:
			l4i_chk = FUNC7(FUNC11(FUNC12(skb)->check));
			break;
		default:
			FUNC0();
		}
	} else {
no_csum:
		/* Errata BTS #50, IHL must be 5 if no HW checksum */
		cmd_sts |= 5 << TX_IHL_SHIFT;
	}

	tx_index = txq->tx_curr_desc++;
	if (txq->tx_curr_desc == txq->tx_ring_size)
		txq->tx_curr_desc = 0;
	desc = &txq->tx_desc_area[tx_index];

	if (nr_frags) {
		FUNC14(txq, skb);
		length = FUNC9(skb);
	} else {
		cmd_sts |= ZERO_PADDING | TX_LAST_DESC | TX_ENABLE_INTERRUPT;
		length = skb->len;
	}

	desc->l4i_chk = l4i_chk;
	desc->byte_cnt = length;
	desc->buf_ptr = FUNC3(mp->dev->dev.parent, skb->data,
				       length, DMA_TO_DEVICE);

	FUNC2(&txq->tx_skb, skb);

	/* ensure all other descriptors are written before first cmd_sts */
	FUNC18();
	desc->cmd_sts = cmd_sts;

	/* clear TX_END status */
	mp->work_tx_end &= ~(1 << txq->index);

	/* ensure all descriptors are written before poking hardware */
	FUNC18();
	FUNC13(txq);

	txq->tx_desc_count += nr_frags + 1;

	return 0;
}
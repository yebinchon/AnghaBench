#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct bnad_rx_unmap_q {int /*<<< orphan*/  type; struct bnad_rx_unmap* unmap; } ;
struct bnad_rx_unmap {int dummy; } ;
struct bnad_rx_ctrl {int /*<<< orphan*/  napi; } ;
struct bnad {int /*<<< orphan*/  vlan_grp; scalar_t__ rx_csum; int /*<<< orphan*/  netdev; } ;
struct bna_rcb {size_t consumer_index; int /*<<< orphan*/  flags; int /*<<< orphan*/  q_depth; TYPE_1__* rxq; struct bnad_rx_unmap_q* unmap_q; } ;
struct bna_pkt_rate {int dummy; } ;
struct bna_cq_entry {scalar_t__ valid; int /*<<< orphan*/  vlan_tag; int /*<<< orphan*/  rxq_id; int /*<<< orphan*/  length; int /*<<< orphan*/  flags; } ;
struct bna_ccb {size_t producer_index; struct bna_rcb** rcb; int /*<<< orphan*/  i_dbell; int /*<<< orphan*/  q_depth; struct bnad_rx_ctrl* ctrl; struct bna_cq_entry* sw_q; struct bna_pkt_rate pkt_rate; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_packets_with_error; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BNAD_RXQ_STARTED ; 
 int BNA_CQ_EF_FCS_ERROR ; 
 int BNA_CQ_EF_MAC_ERROR ; 
 int BNA_CQ_EF_TOO_LONG ; 
 int BNA_CQ_EF_VLAN ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bna_pkt_rate*,int) ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct bnad_rx_ctrl*,struct bnad_rx_unmap_q*,struct bnad_rx_unmap*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnad*,struct bnad_rx_unmap*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnad*,struct bnad_rx_unmap*) ; 
 int /*<<< orphan*/  FUNC8 (struct bnad*,struct bna_rcb*) ; 
 int flags_cksum_prot_mask ; 
 int flags_tcp4 ; 
 int flags_tcp6 ; 
 int flags_udp4 ; 
 int flags_udp6 ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32
FUNC20(struct bnad *bnad, struct bna_ccb *ccb, int budget)
{
	struct bna_cq_entry *cq, *cmpl;
	struct bna_rcb *rcb = NULL;
	struct bnad_rx_unmap_q *unmap_q;
	struct bnad_rx_unmap *unmap;
	struct sk_buff *skb;
	struct bna_pkt_rate *pkt_rt = &ccb->pkt_rate;
	struct bnad_rx_ctrl *rx_ctrl = ccb->ctrl;
	u32 packets = 0, length = 0, flags, masked_flags;

	FUNC15(bnad->netdev);

	cq = ccb->sw_q;
	cmpl = &cq[ccb->producer_index];

	while (cmpl->valid && (packets < budget)) {
		packets++;
		flags = FUNC13(cmpl->flags);
		length = FUNC14(cmpl->length);
		FUNC2(pkt_rt, FUNC14(cmpl->length));

		if (FUNC4(cmpl->rxq_id))
			rcb = ccb->rcb[1];
		else
			rcb = ccb->rcb[0];

		unmap_q = rcb->unmap_q;
		unmap = &unmap_q->unmap[rcb->consumer_index];

		if (FUNC17(flags & (BNA_CQ_EF_MAC_ERROR |
					BNA_CQ_EF_FCS_ERROR |
					BNA_CQ_EF_TOO_LONG))) {
			if (FUNC0(unmap_q->type))
				FUNC6(bnad, unmap);
			else
				FUNC7(bnad, unmap);

			rcb->rxq->rx_packets_with_error++;
			goto next;
		}

		skb = FUNC5(ccb->ctrl, unmap_q, unmap,
				length, flags);

		if (FUNC17(!skb))
			break;

		masked_flags = flags & flags_cksum_prot_mask;

		if (FUNC9
		    (bnad->rx_csum &&
		     ((masked_flags == flags_tcp4) ||
		      (masked_flags == flags_udp4) ||
		      (masked_flags == flags_tcp6) ||
		      (masked_flags == flags_udp6))))
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		else
			skb->ip_summed = CHECKSUM_NONE;

		rcb->rxq->rx_packets++;
		rcb->rxq->rx_bytes += length;

		if (flags & BNA_CQ_EF_VLAN) {
			struct bnad_rx_ctrl *rx_ctrl =
				(struct bnad_rx_ctrl *)ccb->ctrl;
			if (FUNC0(unmap_q->type))
				FUNC18(&rx_ctrl->napi, bnad->vlan_grp,
					       FUNC14(cmpl->vlan_tag));
			else
				FUNC19(skb, bnad->vlan_grp,
							 FUNC14(cmpl->vlan_tag));

		} else { /* Not VLAN tagged/stripped */
			struct bnad_rx_ctrl *rx_ctrl =
				(struct bnad_rx_ctrl *)ccb->ctrl;
			if (FUNC0(unmap_q->type))
				FUNC11(&rx_ctrl->napi);
			else
				FUNC12(skb);
		}

next:
		cmpl->valid = 0;
		FUNC1(rcb->consumer_index, rcb->q_depth);
		FUNC1(ccb->producer_index, ccb->q_depth);
		cmpl = &cq[ccb->producer_index];
	}

	FUNC10(&rx_ctrl->napi);
	if (FUNC9(FUNC16(BNAD_RXQ_STARTED, &ccb->rcb[0]->flags)))
		FUNC3(ccb->i_dbell, packets);

	FUNC8(bnad, ccb->rcb[0]);
	if (ccb->rcb[1])
		FUNC8(bnad, ccb->rcb[1]);

	return packets;
}
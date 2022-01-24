#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcphdr {int doff; int /*<<< orphan*/  seq; } ;
struct sk_buff {int data; scalar_t__ len; struct sk_buff* next; int /*<<< orphan*/ * cb; } ;
struct nes_vnic {int /*<<< orphan*/  nesdev; } ;
struct nes_rskb_cb {scalar_t__ seqnum; } ;
struct TYPE_6__ {struct sk_buff* next; } ;
struct nes_qp {scalar_t__ pau_rcv_nxt; int pau_busy; int pau_pending; scalar_t__ pau_state; int /*<<< orphan*/  pau_lock; TYPE_2__ pau_list; int /*<<< orphan*/  cm_node; TYPE_1__* nesqp_context; } ;
struct iphdr {int ihl; int /*<<< orphan*/  tot_len; } ;
struct TYPE_5__ {int /*<<< orphan*/  rcv_wnd; } ;

/* Variables and functions */
 scalar_t__ PAU_READY ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nes_vnic*,struct nes_qp*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct sk_buff*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct sk_buff*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC15(struct sk_buff *skb, struct nes_vnic *nesvnic, struct nes_qp *nesqp)
{
	struct sk_buff *tmpskb;
	struct nes_rskb_cb *cb;
	struct iphdr *iph;
	struct tcphdr *tcph;
	unsigned char *tcph_end;
	u32 rcv_nxt;
	u32 rcv_wnd;
	u32 seqnum;
	u32 len;
	bool process_it = false;
	unsigned long flags;

	/* Move data ptr to after tcp header */
	iph = (struct iphdr *)skb->data;
	tcph = (struct tcphdr *)(((char *)iph) + (4 * iph->ihl));
	seqnum = FUNC1(tcph->seq);
	tcph_end = (((char *)tcph) + (4 * tcph->doff));

	len = FUNC0(iph->tot_len);
	if (skb->len > len)
		FUNC12(skb, len);
	FUNC9(skb, tcph_end - skb->data);

	/* Initialize tracking values */
	cb = (struct nes_rskb_cb *)&skb->cb[0];
	cb->seqnum = seqnum;

	/* Make sure data is in the receive window */
	rcv_nxt = nesqp->pau_rcv_nxt;
	rcv_wnd = FUNC4(nesqp->nesqp_context->rcv_wnd);
	if (!FUNC3(seqnum, rcv_nxt, (rcv_nxt + rcv_wnd))) {
		FUNC5(nesvnic->nesdev, skb, PCI_DMA_TODEVICE);
		FUNC6(nesqp->cm_node);
		return;
	}

	FUNC13(&nesqp->pau_lock, flags);

	if (nesqp->pau_busy)
		nesqp->pau_pending = 1;
	else
		nesqp->pau_busy = 1;

	/* Queue skb by sequence number */
	if (FUNC11(&nesqp->pau_list) == 0) {
		FUNC10(&nesqp->pau_list, skb);
	} else {
		tmpskb = nesqp->pau_list.next;
		while (tmpskb != (struct sk_buff *)&nesqp->pau_list) {
			cb = (struct nes_rskb_cb *)&tmpskb->cb[0];
			if (FUNC2(seqnum, cb->seqnum))
				break;
			tmpskb = tmpskb->next;
		}
		FUNC8(tmpskb, skb, &nesqp->pau_list);
	}
	if (nesqp->pau_state == PAU_READY)
		process_it = true;
	FUNC14(&nesqp->pau_lock, flags);

	if (process_it)
		FUNC7(nesvnic, nesqp);

	return;
}
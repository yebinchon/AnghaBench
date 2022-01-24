#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {struct sk_buff* next; scalar_t__ len; } ;
struct nes_qp {int /*<<< orphan*/  cm_node; int /*<<< orphan*/  pau_list; } ;
struct nes_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nes_device*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct nes_device *nesdev, struct nes_qp *nesqp,
					struct sk_buff *skb, u32 nextseq, u32 *ack,
					u16 *wnd, u32 *fin_rcvd, u32 *rst_rcvd)
{
	u32 seq;
	bool processacks;
	struct sk_buff *old_skb;

	if (skb) {
		/* Continue processing fpdu */
		if (skb->next == (struct sk_buff *)&nesqp->pau_list)
			goto out;
		skb = skb->next;
		processacks = false;
	} else {
		/* Starting a new one */
		if (FUNC5(&nesqp->pau_list))
			goto out;
		skb = FUNC4(&nesqp->pau_list);
		processacks = true;
	}

	while (1) {
		seq = FUNC1(skb, ack, wnd, fin_rcvd, rst_rcvd);
		if (seq == nextseq) {
			if (skb->len || processacks)
				break;
		} else if (FUNC0(seq, nextseq)) {
			goto out;
		}

		if (skb->next == (struct sk_buff *)&nesqp->pau_list)
			goto out;

		old_skb = skb;
		skb = skb->next;
		FUNC6(old_skb, &nesqp->pau_list);
		FUNC2(nesdev, old_skb, PCI_DMA_TODEVICE);
		FUNC3(nesqp->cm_node);
	}
	return skb;

out:
	return NULL;
}
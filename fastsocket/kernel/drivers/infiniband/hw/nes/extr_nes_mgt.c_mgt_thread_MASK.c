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
struct sk_buff {int /*<<< orphan*/ * cb; scalar_t__ data; } ;
struct nes_vnic {int /*<<< orphan*/  mgt_skb_list; int /*<<< orphan*/  max_frame_size; TYPE_1__* nesdev; int /*<<< orphan*/  mgt_wait_queue; } ;
struct nes_rskb_cb {TYPE_2__* nesqp; scalar_t__ data_start; int /*<<< orphan*/  busaddr; } ;
struct TYPE_4__ {int /*<<< orphan*/  cm_node; } ;
struct TYPE_3__ {int /*<<< orphan*/  pcidev; } ;

/* Variables and functions */
 scalar_t__ ETH_HLEN ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nes_vnic*,TYPE_2__*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(void *context)
{
	struct nes_vnic *nesvnic = context;
	struct sk_buff *skb;
	struct nes_rskb_cb *cb;

	while (!FUNC1()) {
		FUNC7(nesvnic->mgt_wait_queue,
					 FUNC6(&nesvnic->mgt_skb_list) || FUNC1());
		while ((FUNC6(&nesvnic->mgt_skb_list)) && !FUNC1()) {
			skb = FUNC5(&nesvnic->mgt_skb_list);
			cb = (struct nes_rskb_cb *)&skb->cb[0];
			cb->data_start = skb->data - ETH_HLEN;
			cb->busaddr = FUNC3(nesvnic->nesdev->pcidev, cb->data_start,
						     nesvnic->max_frame_size, PCI_DMA_TODEVICE);
			FUNC4(skb, nesvnic, cb->nesqp);
		}
	}

	/* Closing down so delete any entries on the queue */
	while (FUNC6(&nesvnic->mgt_skb_list)) {
		skb = FUNC5(&nesvnic->mgt_skb_list);
		cb = (struct nes_rskb_cb *)&skb->cb[0];
		FUNC2(cb->nesqp->cm_node);
		FUNC0(skb);
	}
	return 0;
}
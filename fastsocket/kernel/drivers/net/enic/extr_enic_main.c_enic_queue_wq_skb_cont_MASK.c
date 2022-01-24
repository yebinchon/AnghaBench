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
struct vnic_wq {int dummy; } ;
struct sk_buff {int dummy; } ;
struct enic {int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_4__ {TYPE_1__* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct vnic_wq*,struct sk_buff*,int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 

__attribute__((used)) static inline void FUNC3(struct enic *enic,
	struct vnic_wq *wq, struct sk_buff *skb,
	unsigned int len_left, int loopback)
{
	skb_frag_t *frag;

	/* Queue additional data fragments */
	for (frag = FUNC2(skb)->frags; len_left; frag++) {
		len_left -= frag->size;
		FUNC0(wq, skb,
			FUNC1(enic->pdev, frag->page,
				frag->page_offset, frag->size,
				PCI_DMA_TODEVICE),
			frag->size,
			(len_left == 0),	/* EOP? */
			loopback);
	}
}
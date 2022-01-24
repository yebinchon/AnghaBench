#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  truesize; int /*<<< orphan*/  data_len; int /*<<< orphan*/  len; } ;
struct bnad_rx_unmap_q {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_3__ vector; struct sk_buff* skb; int /*<<< orphan*/ * page; int /*<<< orphan*/  page_offset; } ;
struct bnad_rx_ctrl {int /*<<< orphan*/  napi; struct bnad* bnad; } ;
struct bnad {int /*<<< orphan*/  netdev; TYPE_1__* pcidev; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr_frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static inline struct sk_buff *
FUNC11(struct bnad_rx_ctrl *rx_ctrl,
		struct bnad_rx_unmap_q *unmap_q,
		struct bnad_rx_unmap *unmap,
		u32 length, u32 flags)
{
	struct bnad *bnad = rx_ctrl->bnad;
	struct sk_buff *skb;

	if (FUNC0(unmap_q->type)) {
		skb = FUNC6(&rx_ctrl->napi);
		if (FUNC10(!skb))
			return NULL;

		FUNC3(&bnad->pcidev->dev,
				FUNC2(&unmap->vector, dma_addr),
				unmap->vector.len, DMA_FROM_DEVICE);
		FUNC7(skb, FUNC9(skb)->nr_frags,
				unmap->page, unmap->page_offset, length);
		skb->len += length;
		skb->data_len += length;
		skb->truesize += length;

		unmap->page = NULL;
		unmap->vector.len = 0;

		return skb;
	}

	skb = unmap->skb;
	FUNC1(!skb);

	FUNC4(&bnad->pcidev->dev,
			FUNC2(&unmap->vector, dma_addr),
			unmap->vector.len, DMA_FROM_DEVICE);

	FUNC8(skb, length);

	skb->protocol = FUNC5(skb, bnad->netdev);

	unmap->skb = NULL;
	unmap->vector.len = 0;
	return skb;
}
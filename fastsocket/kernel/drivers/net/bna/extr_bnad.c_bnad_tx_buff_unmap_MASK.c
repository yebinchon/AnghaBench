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
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct bnad_tx_unmap {int nvecs; int /*<<< orphan*/ * vectors; struct sk_buff* skb; } ;
struct bnad {TYPE_1__* pcidev; } ;
struct TYPE_6__ {TYPE_2__* frags; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BFI_TX_MAX_VECTORS_PER_WI ; 
 int /*<<< orphan*/  FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 TYPE_3__* FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static u32
FUNC7(struct bnad *bnad,
			      struct bnad_tx_unmap *unmap_q,
			      u32 q_depth, u32 index)
{
	struct bnad_tx_unmap *unmap;
	struct sk_buff *skb;
	int vector, nvecs;

	unmap = &unmap_q[index];
	nvecs = unmap->nvecs;

	skb = unmap->skb;
	unmap->skb = NULL;
	unmap->nvecs = 0;
	FUNC4(&bnad->pcidev->dev,
		FUNC1(&unmap->vectors[0], dma_addr),
		FUNC5(skb), DMA_TO_DEVICE);
	FUNC2(&unmap->vectors[0], dma_addr, 0);
	nvecs--;

	vector = 0;
	while (nvecs) {
		vector++;
		if (vector == BFI_TX_MAX_VECTORS_PER_WI) {
			vector = 0;
			FUNC0(index, q_depth);
			unmap = &unmap_q[index];
		}

		FUNC3(&bnad->pcidev->dev,
			FUNC1(&unmap->vectors[vector], dma_addr),
			FUNC6(skb)->frags[nvecs].size, DMA_TO_DEVICE);
		FUNC2(&unmap->vectors[vector], dma_addr, 0);
		nvecs--;
	}

	FUNC0(index, q_depth);

	return index;
}
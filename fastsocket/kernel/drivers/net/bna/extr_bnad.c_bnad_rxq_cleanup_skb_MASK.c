#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ len; } ;
struct bnad_rx_unmap {TYPE_2__ vector; int /*<<< orphan*/ * skb; } ;
struct bnad {TYPE_1__* pcidev; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dma_addr ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct bnad *bnad, struct bnad_rx_unmap *unmap)
{
	if (!unmap->skb)
		return;

	FUNC3(&bnad->pcidev->dev,
			FUNC1(&unmap->vector, dma_addr),
			unmap->vector.len, DMA_FROM_DEVICE);
	FUNC0(unmap->skb);
	unmap->skb = NULL;
	FUNC2(&unmap->vector, dma_addr, 0);
	unmap->vector.len = 0;
}
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
struct jme_ring {int /*<<< orphan*/  next_to_clean; scalar_t__ next_to_use; int /*<<< orphan*/ * bufinf; scalar_t__ dma; scalar_t__ dmaalloc; int /*<<< orphan*/ * desc; int /*<<< orphan*/ * alloc; } ;
struct jme_adapter {int rx_ring_size; TYPE_1__* pdev; struct jme_ring* rxring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct jme_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct jme_adapter *jme)
{
	int i;
	struct jme_ring *rxring = &(jme->rxring[0]);

	if (rxring->alloc) {
		if (rxring->bufinf) {
			for (i = 0 ; i < jme->rx_ring_size ; ++i)
				FUNC3(jme, i);
			FUNC4(rxring->bufinf);
		}

		FUNC2(&(jme->pdev->dev),
				  FUNC0(jme->rx_ring_size),
				  rxring->alloc,
				  rxring->dmaalloc);
		rxring->alloc    = NULL;
		rxring->desc     = NULL;
		rxring->dmaalloc = 0;
		rxring->dma      = 0;
		rxring->bufinf   = NULL;
	}
	rxring->next_to_use   = 0;
	FUNC1(&rxring->next_to_clean, 0);
}
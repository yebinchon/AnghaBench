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
struct jme_ring {unsigned long dmaalloc; int /*<<< orphan*/ * bufinf; scalar_t__ dma; int /*<<< orphan*/ * desc; scalar_t__ alloc; int /*<<< orphan*/  next_to_clean; scalar_t__ next_to_use; } ;
struct jme_buffer_info {int dummy; } ;
struct jme_adapter {int rx_ring_size; TYPE_1__* pdev; struct jme_ring* rxring; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RING_DESC_ALIGN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_adapter*) ; 
 int FUNC6 (struct jme_adapter*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct jme_adapter*,int) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct jme_adapter *jme)
{
	int i;
	struct jme_ring *rxring = &(jme->rxring[0]);

	rxring->alloc = FUNC3(&(jme->pdev->dev),
				   FUNC1(jme->rx_ring_size),
				   &(rxring->dmaalloc),
				   GFP_ATOMIC);
	if (!rxring->alloc)
		goto err_set_null;

	/*
	 * 16 Bytes align
	 */
	rxring->desc		= (void *)FUNC0((unsigned long)(rxring->alloc),
						RING_DESC_ALIGN);
	rxring->dma		= FUNC0(rxring->dmaalloc, RING_DESC_ALIGN);
	rxring->next_to_use	= 0;
	FUNC2(&rxring->next_to_clean, 0);

	rxring->bufinf		= FUNC8(sizeof(struct jme_buffer_info) *
					jme->rx_ring_size, GFP_ATOMIC);
	if (FUNC10(!(rxring->bufinf)))
		goto err_free_rxring;

	/*
	 * Initiallize Receive Descriptors
	 */
	FUNC9(rxring->bufinf, 0,
		sizeof(struct jme_buffer_info) * jme->rx_ring_size);
	for (i = 0 ; i < jme->rx_ring_size ; ++i) {
		if (FUNC10(FUNC6(jme, i))) {
			FUNC5(jme);
			return -ENOMEM;
		}

		FUNC7(jme, i);
	}

	return 0;

err_free_rxring:
	FUNC4(&(jme->pdev->dev),
			  FUNC1(jme->rx_ring_size),
			  rxring->alloc,
			  rxring->dmaalloc);
err_set_null:
	rxring->desc = NULL;
	rxring->dmaalloc = 0;
	rxring->dma = 0;
	rxring->bufinf = NULL;

	return -ENOMEM;
}
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
struct b43_dmaring {int tx; int nr_slots; int current_slot; struct b43_dma_ops* ops; } ;
struct b43_dma_ops {int (* get_current_rxslot ) (struct b43_dmaring*) ;int /*<<< orphan*/  (* set_current_rxslot ) (struct b43_dmaring*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_dmaring*,int*) ; 
 int FUNC2 (struct b43_dmaring*,int) ; 
 int FUNC3 (struct b43_dmaring*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_dmaring*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_dmaring*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct b43_dmaring *ring)
{
	const struct b43_dma_ops *ops = ring->ops;
	int slot, current_slot;
	int used_slots = 0;

	FUNC0(ring->tx);
	current_slot = ops->get_current_rxslot(ring);
	FUNC0(!(current_slot >= 0 && current_slot < ring->nr_slots));

	slot = ring->current_slot;
	for (; slot != current_slot; slot = FUNC2(ring, slot)) {
		FUNC1(ring, &slot);
		FUNC5(ring, ++used_slots);
	}
	FUNC6();
	ops->set_current_rxslot(ring, slot);
	ring->current_slot = slot;
}
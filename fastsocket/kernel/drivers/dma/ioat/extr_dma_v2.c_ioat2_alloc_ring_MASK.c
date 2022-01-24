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
struct TYPE_2__ {int /*<<< orphan*/  phys; } ;
struct ioat_ring_ent {TYPE_1__ txd; struct ioat_dma_descriptor* hw; } ;
struct ioat_dma_descriptor {int /*<<< orphan*/  next; } ;
struct dma_chan {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct ioat_ring_ent* FUNC0 (struct dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ioat_ring_ent*,struct dma_chan*) ; 
 int FUNC2 () ; 
 struct ioat_ring_ent** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ioat_ring_ent**) ; 
 int /*<<< orphan*/  FUNC5 (struct ioat_ring_ent*,int) ; 

__attribute__((used)) static struct ioat_ring_ent **FUNC6(struct dma_chan *c, int order, gfp_t flags)
{
	struct ioat_ring_ent **ring;
	int descs = 1 << order;
	int i;

	if (order > FUNC2())
		return NULL;

	/* allocate the array to hold the software ring */
	ring = FUNC3(descs, sizeof(*ring), flags);
	if (!ring)
		return NULL;
	for (i = 0; i < descs; i++) {
		ring[i] = FUNC0(c, flags);
		if (!ring[i]) {
			while (i--)
				FUNC1(ring[i], c);
			FUNC4(ring);
			return NULL;
		}
		FUNC5(ring[i], i);
	}

	/* link descs */
	for (i = 0; i < descs-1; i++) {
		struct ioat_ring_ent *next = ring[i+1];
		struct ioat_dma_descriptor *hw = ring[i]->hw;

		hw->next = next->txd.phys;
	}
	ring[i]->hw->next = ring[0]->txd.phys;

	return ring;
}
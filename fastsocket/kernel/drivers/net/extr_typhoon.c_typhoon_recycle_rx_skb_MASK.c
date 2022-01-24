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
typedef  size_t u32 ;
struct typhoon_indexes {void* rxBuffReady; int /*<<< orphan*/  rxBuffCleared; } ;
struct basic_ring {int lastWrite; scalar_t__ ringBase; } ;
struct typhoon {struct basic_ring rxBuffRing; struct rxbuff_ent* rxbuffers; struct typhoon_indexes* indexes; } ;
struct rxbuff_ent {int dma_addr; int /*<<< orphan*/ * skb; } ;
struct rx_free {size_t virtAddr; void* physAddr; } ;

/* Variables and functions */
 int RXFREE_ENTRIES ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(struct typhoon *tp, u32 idx)
{
	struct typhoon_indexes *indexes = tp->indexes;
	struct rxbuff_ent *rxb = &tp->rxbuffers[idx];
	struct basic_ring *ring = &tp->rxBuffRing;
	struct rx_free *r;

	if((ring->lastWrite + sizeof(*r)) % (RXFREE_ENTRIES * sizeof(*r)) ==
				FUNC2(indexes->rxBuffCleared)) {
		/* no room in ring, just drop the skb
		 */
		FUNC1(rxb->skb);
		rxb->skb = NULL;
		return;
	}

	r = (struct rx_free *) (ring->ringBase + ring->lastWrite);
	FUNC3(&ring->lastWrite, 1);
	r->virtAddr = idx;
	r->physAddr = FUNC0(rxb->dma_addr);

	/* Tell the card about it */
	FUNC4();
	indexes->rxBuffReady = FUNC0(ring->lastWrite);
}
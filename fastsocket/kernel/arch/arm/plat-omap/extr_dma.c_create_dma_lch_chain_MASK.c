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
typedef  int u32 ;
struct TYPE_2__ {int next_linked_ch; int prev_linked_ch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* dma_chan ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(int lch_head, int lch_queue)
{
	u32 l;

	/* Check if this is the first link in chain */
	if (dma_chan[lch_head].next_linked_ch == -1) {
		dma_chan[lch_head].next_linked_ch = lch_queue;
		dma_chan[lch_head].prev_linked_ch = lch_queue;
		dma_chan[lch_queue].next_linked_ch = lch_head;
		dma_chan[lch_queue].prev_linked_ch = lch_head;
	}

	/* a link exists, link the new channel in circular chain */
	else {
		dma_chan[lch_queue].next_linked_ch =
					dma_chan[lch_head].next_linked_ch;
		dma_chan[lch_queue].prev_linked_ch = lch_head;
		dma_chan[lch_head].next_linked_ch = lch_queue;
		dma_chan[dma_chan[lch_queue].next_linked_ch].prev_linked_ch =
					lch_queue;
	}

	l = FUNC1(FUNC0(lch_head));
	l &= ~(0x1f);
	l |= lch_queue;
	FUNC2(l, FUNC0(lch_head));

	l = FUNC1(FUNC0(lch_queue));
	l &= ~(0x1f);
	l |= (dma_chan[lch_queue].next_linked_ch);
	FUNC2(l, FUNC0(lch_queue));
}
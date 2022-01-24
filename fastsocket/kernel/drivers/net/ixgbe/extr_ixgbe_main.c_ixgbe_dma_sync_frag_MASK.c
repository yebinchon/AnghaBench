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
struct skb_frag_struct {int /*<<< orphan*/  page_offset; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int page_released; scalar_t__ dma; } ;
struct TYPE_3__ {struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 TYPE_2__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ring*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct ixgbe_ring *rx_ring,
				struct sk_buff *skb)
{
	/* if the page was released unmap it, else just sync our portion */
	if (FUNC6(FUNC0(skb)->page_released)) {
		FUNC2(rx_ring->dev, FUNC0(skb)->dma,
			       FUNC4(rx_ring), DMA_FROM_DEVICE);
		FUNC0(skb)->page_released = false;
	} else {
		struct skb_frag_struct *frag = &FUNC5(skb)->frags[0];

		FUNC1(rx_ring->dev,
					      FUNC0(skb)->dma,
					      frag->page_offset,
					      FUNC3(rx_ring),
					      DMA_FROM_DEVICE);
	}
	FUNC0(skb)->dma = 0;
}
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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct ixgbe_rx_buffer {int /*<<< orphan*/ * page; scalar_t__ dma; struct sk_buff* skb; } ;
struct ixgbe_ring {size_t count; unsigned long size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ next_to_alloc; struct ixgbe_rx_buffer* desc; struct ixgbe_rx_buffer* rx_buffer_info; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int page_released; scalar_t__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_rx_buffer*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct ixgbe_ring *rx_ring)
{
	struct device *dev = rx_ring->dev;
	unsigned long size;
	u16 i;

	/* ring already cleared, nothing to do */
	if (!rx_ring->rx_buffer_info)
		return;

	/* Free all the Rx ring sk_buffs */
	for (i = 0; i < rx_ring->count; i++) {
		struct ixgbe_rx_buffer *rx_buffer;

		rx_buffer = &rx_ring->rx_buffer_info[i];
		if (rx_buffer->skb) {
			struct sk_buff *skb = rx_buffer->skb;
			if (FUNC0(skb)->page_released) {
				FUNC3(dev,
					       FUNC0(skb)->dma,
					       FUNC4(rx_ring),
					       DMA_FROM_DEVICE);
				FUNC0(skb)->page_released = false;
			}
			FUNC2(skb);
		}
		rx_buffer->skb = NULL;
		if (rx_buffer->dma)
			FUNC3(dev, rx_buffer->dma,
				       FUNC6(rx_ring),
				       DMA_FROM_DEVICE);
		rx_buffer->dma = 0;
		if (rx_buffer->page)
			FUNC1(rx_buffer->page,
				     FUNC5(rx_ring));
		rx_buffer->page = NULL;
	}

	size = sizeof(struct ixgbe_rx_buffer) * rx_ring->count;
	FUNC7(rx_ring->rx_buffer_info, 0, size);

	/* Zero out the descriptor ring */
	FUNC7(rx_ring->desc, 0, rx_ring->size);

	rx_ring->next_to_alloc = 0;
	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;
}
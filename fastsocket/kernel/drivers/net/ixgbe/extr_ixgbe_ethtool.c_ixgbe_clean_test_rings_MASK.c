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
typedef  union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef  size_t u16 ;
struct ixgbe_tx_buffer {int dummy; } ;
struct ixgbe_rx_buffer {int /*<<< orphan*/  dma; } ;
struct ixgbe_ring {size_t next_to_clean; size_t count; struct ixgbe_tx_buffer* tx_buffer_info; int /*<<< orphan*/  dev; struct ixgbe_rx_buffer* rx_buffer_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  IXGBE_RXD_STAT_DD ; 
 union ixgbe_adv_rx_desc* FUNC0 (struct ixgbe_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*,size_t) ; 
 scalar_t__ FUNC4 (struct ixgbe_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*) ; 
 scalar_t__ FUNC6 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_ring*,struct ixgbe_tx_buffer*) ; 

__attribute__((used)) static u16 FUNC8(struct ixgbe_ring *rx_ring,
				  struct ixgbe_ring *tx_ring,
				  unsigned int size)
{
	union ixgbe_adv_rx_desc *rx_desc;
	struct ixgbe_rx_buffer *rx_buffer;
	struct ixgbe_tx_buffer *tx_buffer;
	u16 rx_ntc, tx_ntc, count = 0;

	/* initialize next to clean and descriptor values */
	rx_ntc = rx_ring->next_to_clean;
	tx_ntc = tx_ring->next_to_clean;
	rx_desc = FUNC0(rx_ring, rx_ntc);

	while (FUNC6(rx_desc, IXGBE_RXD_STAT_DD)) {
		/* check Rx buffer */
		rx_buffer = &rx_ring->rx_buffer_info[rx_ntc];

		/* sync Rx buffer for CPU read */
		FUNC1(rx_ring->dev,
					rx_buffer->dma,
					FUNC5(rx_ring),
					DMA_FROM_DEVICE);

		/* verify contents of skb */
		if (FUNC4(rx_buffer, size))
			count++;

		/* sync Rx buffer for device write */
		FUNC2(rx_ring->dev,
					   rx_buffer->dma,
					   FUNC5(rx_ring),
					   DMA_FROM_DEVICE);

		/* unmap buffer on Tx side */
		tx_buffer = &tx_ring->tx_buffer_info[tx_ntc];
		FUNC7(tx_ring, tx_buffer);

		/* increment Rx/Tx next to clean counters */
		rx_ntc++;
		if (rx_ntc == rx_ring->count)
			rx_ntc = 0;
		tx_ntc++;
		if (tx_ntc == tx_ring->count)
			tx_ntc = 0;

		/* fetch next descriptor */
		rx_desc = FUNC0(rx_ring, rx_ntc);
	}

	/* re-map buffers to ring, store next to clean values */
	FUNC3(rx_ring, count);
	rx_ring->next_to_clean = rx_ntc;
	tx_ring->next_to_clean = tx_ntc;

	return count;
}
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
typedef  union e1000_adv_rx_desc {int dummy; } e1000_adv_rx_desc ;
typedef  size_t u16 ;
struct igb_tx_buffer {int dummy; } ;
struct igb_rx_buffer {int /*<<< orphan*/  dma; } ;
struct igb_ring {size_t next_to_clean; size_t count; struct igb_tx_buffer* tx_buffer_info; int /*<<< orphan*/  dev; struct igb_rx_buffer* rx_buffer_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  E1000_RXD_STAT_DD ; 
 int /*<<< orphan*/  IGB_RX_BUFSZ ; 
 union e1000_adv_rx_desc* FUNC0 (struct igb_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct igb_ring*,size_t) ; 
 scalar_t__ FUNC4 (struct igb_rx_buffer*,unsigned int) ; 
 scalar_t__ FUNC5 (union e1000_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct igb_ring*,struct igb_tx_buffer*) ; 

__attribute__((used)) static int FUNC7(struct igb_ring *rx_ring,
				struct igb_ring *tx_ring,
				unsigned int size)
{
	union e1000_adv_rx_desc *rx_desc;
	struct igb_rx_buffer *rx_buffer_info;
	struct igb_tx_buffer *tx_buffer_info;
	u16 rx_ntc, tx_ntc, count = 0;

	/* initialize next to clean and descriptor values */
	rx_ntc = rx_ring->next_to_clean;
	tx_ntc = tx_ring->next_to_clean;
	rx_desc = FUNC0(rx_ring, rx_ntc);

	while (FUNC5(rx_desc, E1000_RXD_STAT_DD)) {
		/* check Rx buffer */
		rx_buffer_info = &rx_ring->rx_buffer_info[rx_ntc];

		/* sync Rx buffer for CPU read */
		FUNC1(rx_ring->dev,
					rx_buffer_info->dma,
					IGB_RX_BUFSZ,
					DMA_FROM_DEVICE);

		/* verify contents of skb */
		if (FUNC4(rx_buffer_info, size))
			count++;

		/* sync Rx buffer for device write */
		FUNC2(rx_ring->dev,
					   rx_buffer_info->dma,
					   IGB_RX_BUFSZ,
					   DMA_FROM_DEVICE);

		/* unmap buffer on Tx side */
		tx_buffer_info = &tx_ring->tx_buffer_info[tx_ntc];
		FUNC6(tx_ring, tx_buffer_info);

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
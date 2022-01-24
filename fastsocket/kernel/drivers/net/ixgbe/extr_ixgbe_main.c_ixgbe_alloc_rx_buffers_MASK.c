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
struct TYPE_2__ {scalar_t__ hdr_addr; int /*<<< orphan*/  pkt_addr; } ;
union ixgbe_adv_rx_desc {TYPE_1__ read; } ;
typedef  size_t u16 ;
struct ixgbe_rx_buffer {scalar_t__ page_offset; scalar_t__ dma; } ;
struct ixgbe_ring {size_t next_to_use; scalar_t__ count; struct ixgbe_rx_buffer* rx_buffer_info; } ;

/* Variables and functions */
 union ixgbe_adv_rx_desc* FUNC0 (struct ixgbe_ring*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_ring*,struct ixgbe_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*,size_t) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct ixgbe_ring *rx_ring, u16 cleaned_count)
{
	union ixgbe_adv_rx_desc *rx_desc;
	struct ixgbe_rx_buffer *bi;
	u16 i = rx_ring->next_to_use;

	/* nothing to do */
	if (!cleaned_count)
		return;

	rx_desc = FUNC0(rx_ring, i);
	bi = &rx_ring->rx_buffer_info[i];
	i -= rx_ring->count;

	do {
		if (!FUNC2(rx_ring, bi))
			break;

		/*
		 * Refresh the desc even if buffer_addrs didn't change
		 * because each write-back erases this info.
		 */
		rx_desc->read.pkt_addr = FUNC1(bi->dma + bi->page_offset);

		rx_desc++;
		bi++;
		i++;
		if (FUNC4(!i)) {
			rx_desc = FUNC0(rx_ring, 0);
			bi = rx_ring->rx_buffer_info;
			i -= rx_ring->count;
		}

		/* clear the hdr_addr for the next_to_use descriptor */
		rx_desc->read.hdr_addr = 0;

		cleaned_count--;
	} while (cleaned_count);

	i += rx_ring->count;

	if (rx_ring->next_to_use != i)
		FUNC3(rx_ring, i);
}
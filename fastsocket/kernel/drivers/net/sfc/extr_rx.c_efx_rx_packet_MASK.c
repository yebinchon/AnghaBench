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
typedef  int u16 ;
struct efx_rx_queue {unsigned int ptr_mask; struct efx_nic* efx; } ;
struct efx_rx_buffer {int flags; unsigned int len; int /*<<< orphan*/  page_offset; } ;
struct efx_nic {TYPE_1__* type; int /*<<< orphan*/  net_dev; int /*<<< orphan*/  rx_scatter; } ;
struct efx_channel {unsigned int rx_pkt_n_frags; unsigned int rx_pkt_index; } ;
struct TYPE_2__ {scalar_t__ rx_buffer_hash_size; } ;

/* Variables and functions */
 unsigned int EFX_RX_MAX_FRAGS ; 
 int EFX_RX_PKT_CSUMMED ; 
 int EFX_RX_PKT_DISCARD ; 
 unsigned int EFX_RX_USR_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_channel*,struct efx_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_channel*,struct efx_rx_buffer*,unsigned int) ; 
 struct efx_rx_buffer* FUNC3 (struct efx_rx_queue*,struct efx_rx_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_rx_buffer*) ; 
 struct efx_rx_buffer* FUNC5 (struct efx_rx_queue*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_rx_queue*,struct efx_rx_buffer*,unsigned int) ; 
 struct efx_channel* FUNC8 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,struct efx_rx_buffer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_status ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct efx_rx_queue *rx_queue, unsigned int index,
		   unsigned int n_frags, unsigned int len, u16 flags)
{
	struct efx_nic *efx = rx_queue->efx;
	struct efx_channel *channel = FUNC8(rx_queue);
	struct efx_rx_buffer *rx_buf;

	rx_buf = FUNC5(rx_queue, index);
	rx_buf->flags |= flags;

	/* Validate the number of fragments and completed length */
	if (n_frags == 1) {
		FUNC7(rx_queue, rx_buf, len);
	} else if (FUNC13(n_frags > EFX_RX_MAX_FRAGS) ||
		   FUNC13(len <= (n_frags - 1) * EFX_RX_USR_BUF_SIZE) ||
		   FUNC13(len > n_frags * EFX_RX_USR_BUF_SIZE) ||
		   FUNC13(!efx->rx_scatter)) {
		/* If this isn't an explicit discard request, either
		 * the hardware or the driver is broken.
		 */
		FUNC0(!(len == 0 && rx_buf->flags & EFX_RX_PKT_DISCARD));
		rx_buf->flags |= EFX_RX_PKT_DISCARD;
	}

	FUNC11(efx, rx_status, efx->net_dev,
		   "RX queue %d received ids %x-%x len %d %s%s\n",
		   FUNC9(rx_queue), index,
		   (index + n_frags - 1) & rx_queue->ptr_mask, len,
		   (rx_buf->flags & EFX_RX_PKT_CSUMMED) ? " [SUMMED]" : "",
		   (rx_buf->flags & EFX_RX_PKT_DISCARD) ? " [DISCARD]" : "");

	/* Discard packet, if instructed to do so.  Process the
	 * previous receive first.
	 */
	if (FUNC13(rx_buf->flags & EFX_RX_PKT_DISCARD)) {
		FUNC6(channel);
		FUNC1(channel, rx_buf, n_frags);
		return;
	}

	if (n_frags == 1)
		rx_buf->len = len;

	/* Release and/or sync the DMA mapping - assumes all RX buffers
	 * consumed in-order per RX queue.
	 */
	FUNC10(efx, rx_buf, rx_buf->len);

	/* Prefetch nice and early so data will (hopefully) be in cache by
	 * the time we look at it.
	 */
	FUNC12(FUNC4(rx_buf));

	rx_buf->page_offset += efx->type->rx_buffer_hash_size;
	rx_buf->len -= efx->type->rx_buffer_hash_size;

	if (n_frags > 1) {
		/* Release/sync DMA mapping for additional fragments.
		 * Fix length for last fragment.
		 */
		unsigned int tail_frags = n_frags - 1;

		for (;;) {
			rx_buf = FUNC3(rx_queue, rx_buf);
			if (--tail_frags == 0)
				break;
			FUNC10(efx, rx_buf, EFX_RX_USR_BUF_SIZE);
		}
		rx_buf->len = len - (n_frags - 1) * EFX_RX_USR_BUF_SIZE;
		FUNC10(efx, rx_buf, rx_buf->len);
	}

	/* All fragments have been DMA-synced, so recycle pages. */
	rx_buf = FUNC5(rx_queue, index);
	FUNC2(channel, rx_buf, n_frags);

	/* Pipeline receives so that we give time for packet headers to be
	 * prefetched into cache.
	 */
	FUNC6(channel);
	channel->rx_pkt_n_frags = n_frags;
	channel->rx_pkt_index = index;
}
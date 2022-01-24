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
struct efx_rx_queue {unsigned int added_count; unsigned int removed_count; unsigned int fast_fill_trigger; unsigned int min_fill; unsigned int max_fill; scalar_t__ notified_count; struct efx_nic* efx; } ;
struct efx_nic {unsigned int rxq_entries; unsigned int rx_pages_per_batch; unsigned int rx_bufs_per_page; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  rx_status ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct efx_rx_queue *rx_queue)
{
	struct efx_nic *efx = rx_queue->efx;
	unsigned int fill_level, batch_size;
	int space, rc = 0;

	/* Calculate current fill level, and exit if we don't need to fill */
	fill_level = (rx_queue->added_count - rx_queue->removed_count);
	FUNC0(fill_level > rx_queue->efx->rxq_entries);
	if (fill_level >= rx_queue->fast_fill_trigger)
		goto out;

	/* Record minimum fill level */
	if (FUNC6(fill_level < rx_queue->min_fill)) {
		if (fill_level)
			rx_queue->min_fill = fill_level;
	}

	batch_size = efx->rx_pages_per_batch * efx->rx_bufs_per_page;
	space = rx_queue->max_fill - fill_level;
	FUNC0(space < batch_size);

	FUNC5(rx_queue->efx, rx_status, rx_queue->efx->net_dev,
		   "RX queue %d fast-filling descriptor ring from"
		   " level %d to level %d\n",
		   FUNC3(rx_queue), fill_level,
		   rx_queue->max_fill);


	do {
		rc = FUNC1(rx_queue);
		if (FUNC6(rc)) {
			/* Ensure that we don't leave the rx queue empty */
			if (rx_queue->added_count == rx_queue->removed_count)
				FUNC4(rx_queue);
			goto out;
		}
	} while ((space -= batch_size) >= batch_size);

	FUNC5(rx_queue->efx, rx_status, rx_queue->efx->net_dev,
		   "RX queue %d fast-filled descriptor ring "
		   "to level %d\n", FUNC3(rx_queue),
		   rx_queue->added_count - rx_queue->removed_count);

 out:
	if (rx_queue->notified_count != rx_queue->added_count)
		FUNC2(rx_queue);
}
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
struct efx_rx_queue {unsigned int ptr_mask; int /*<<< orphan*/ * buffer; struct efx_nic* efx; } ;
struct efx_nic {int /*<<< orphan*/  rxq_entries; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int EFX_MAX_DMAQ_SIZE ; 
 int /*<<< orphan*/  EFX_MIN_DMAQ_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct efx_rx_queue *rx_queue)
{
	struct efx_nic *efx = rx_queue->efx;
	unsigned int entries;
	int rc;

	/* Create the smallest power-of-two aligned ring */
	entries = FUNC5(FUNC7(efx->rxq_entries), EFX_MIN_DMAQ_SIZE);
	FUNC0(entries > EFX_MAX_DMAQ_SIZE);
	rx_queue->ptr_mask = entries - 1;

	FUNC6(efx, probe, efx->net_dev,
		  "creating RX queue %d size %#x mask %#x\n",
		  FUNC2(rx_queue), efx->rxq_entries,
		  rx_queue->ptr_mask);

	/* Allocate RX buffers */
	rx_queue->buffer = FUNC3(entries, sizeof(*rx_queue->buffer),
				   GFP_KERNEL);
	if (!rx_queue->buffer)
		return -ENOMEM;

	rc = FUNC1(rx_queue);
	if (rc) {
		FUNC4(rx_queue->buffer);
		rx_queue->buffer = NULL;
	}

	return rc;
}
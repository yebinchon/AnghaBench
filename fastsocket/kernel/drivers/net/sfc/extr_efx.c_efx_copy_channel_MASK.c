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
struct efx_tx_queue {int /*<<< orphan*/  txd; int /*<<< orphan*/ * buffer; struct efx_channel* channel; } ;
struct efx_rx_queue {int /*<<< orphan*/  slow_fill; int /*<<< orphan*/  rxd; int /*<<< orphan*/ * buffer; } ;
struct efx_channel {struct efx_rx_queue rx_queue; struct efx_tx_queue* tx_queue; int /*<<< orphan*/  eventq; int /*<<< orphan*/ * napi_dev; } ;

/* Variables and functions */
 int EFX_TXQ_TYPES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  efx_rx_slow_fill ; 
 struct efx_channel* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct efx_channel *
FUNC3(const struct efx_channel *old_channel)
{
	struct efx_channel *channel;
	struct efx_rx_queue *rx_queue;
	struct efx_tx_queue *tx_queue;
	int j;

	channel = FUNC0(sizeof(*channel), GFP_KERNEL);
	if (!channel)
		return NULL;

	*channel = *old_channel;

	channel->napi_dev = NULL;
	FUNC1(&channel->eventq, 0, sizeof(channel->eventq));

	for (j = 0; j < EFX_TXQ_TYPES; j++) {
		tx_queue = &channel->tx_queue[j];
		if (tx_queue->channel)
			tx_queue->channel = channel;
		tx_queue->buffer = NULL;
		FUNC1(&tx_queue->txd, 0, sizeof(tx_queue->txd));
	}

	rx_queue = &channel->rx_queue;
	rx_queue->buffer = NULL;
	FUNC1(&rx_queue->rxd, 0, sizeof(rx_queue->rxd));
	FUNC2(&rx_queue->slow_fill, efx_rx_slow_fill,
		    (unsigned long)rx_queue);

	return channel;
}
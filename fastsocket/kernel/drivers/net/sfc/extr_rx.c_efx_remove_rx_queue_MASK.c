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
struct efx_rx_queue {int /*<<< orphan*/ * buffer; TYPE_1__* efx; } ;
struct TYPE_2__ {int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_rx_queue*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

void FUNC4(struct efx_rx_queue *rx_queue)
{
	FUNC3(rx_queue->efx, drv, rx_queue->efx->net_dev,
		  "destroying RX queue %d\n", FUNC1(rx_queue));

	FUNC0(rx_queue);

	FUNC2(rx_queue->buffer);
	rx_queue->buffer = NULL;
}
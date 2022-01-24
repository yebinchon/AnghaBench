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
struct rx_queue {int rx_ring_size; scalar_t__ index; scalar_t__ rx_desc_area_size; scalar_t__* rx_skb; int /*<<< orphan*/  rx_desc_dma; int /*<<< orphan*/  rx_desc_area; scalar_t__ rx_desc_count; } ;
struct mv643xx_eth_private {scalar_t__ rx_desc_sram_size; TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct rx_queue*) ; 
 struct mv643xx_eth_private* FUNC6 (struct rx_queue*) ; 

__attribute__((used)) static void FUNC7(struct rx_queue *rxq)
{
	struct mv643xx_eth_private *mp = FUNC6(rxq);
	int i;

	FUNC5(rxq);

	for (i = 0; i < rxq->rx_ring_size; i++) {
		if (rxq->rx_skb[i]) {
			FUNC0(rxq->rx_skb[i]);
			rxq->rx_desc_count--;
		}
	}

	if (rxq->rx_desc_count) {
		FUNC1(KERN_ERR, &mp->dev->dev,
			   "error freeing rx ring -- %d skbs stuck\n",
			   rxq->rx_desc_count);
	}

	if (rxq->index == 0 &&
	    rxq->rx_desc_area_size <= mp->rx_desc_sram_size)
		FUNC3(rxq->rx_desc_area);
	else
		FUNC2(mp->dev->dev.parent, rxq->rx_desc_area_size,
				  rxq->rx_desc_area, rxq->rx_desc_dma);

	FUNC4(rxq->rx_skb);
}
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
struct TYPE_2__ {int buff_stat; scalar_t__ len; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ tx_dma_t ;
struct net_device {int dummy; } ;
struct au1000_private {size_t tx_tail; scalar_t__ tx_full; TYPE_1__** tx_dma_ring; } ;

/* Variables and functions */
 int NUM_TX_DMA ; 
 int TX_T_DONE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct au1000_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct au1000_private *aup = FUNC1(dev);
	volatile tx_dma_t *ptxd;

	ptxd = aup->tx_dma_ring[aup->tx_tail];

	while (ptxd->buff_stat & TX_T_DONE) {
		FUNC3(dev, ptxd->status);
		ptxd->buff_stat &= ~TX_T_DONE;
		ptxd->len = 0;
		FUNC0();

		aup->tx_tail = (aup->tx_tail + 1) & (NUM_TX_DMA - 1);
		ptxd = aup->tx_dma_ring[aup->tx_tail];

		if (aup->tx_full) {
			aup->tx_full = 0;
			FUNC2(dev);
		}
	}
}
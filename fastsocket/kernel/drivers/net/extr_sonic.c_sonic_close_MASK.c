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
struct sonic_local {int /*<<< orphan*/ ** rx_skb; void** rx_laddr; int /*<<< orphan*/  device; int /*<<< orphan*/ ** tx_skb; void** tx_laddr; int /*<<< orphan*/ * tx_len; } ;
struct net_device {int dummy; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  SONIC_CMD ; 
 int SONIC_CR_RST ; 
 int /*<<< orphan*/  SONIC_IMR ; 
 int /*<<< orphan*/  SONIC_ISR ; 
 int SONIC_NUM_RRS ; 
 int SONIC_NUM_TDS ; 
 int /*<<< orphan*/  SONIC_RBSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sonic_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int sonic_debug ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct sonic_local *lp = FUNC3(dev);
	int i;

	if (sonic_debug > 2)
		FUNC5("sonic_close\n");

	FUNC4(dev);

	/*
	 * stop the SONIC, disable interrupts
	 */
	FUNC0(SONIC_IMR, 0);
	FUNC0(SONIC_ISR, 0x7fff);
	FUNC0(SONIC_CMD, SONIC_CR_RST);

	/* unmap and free skbs that haven't been transmitted */
	for (i = 0; i < SONIC_NUM_TDS; i++) {
		if(lp->tx_laddr[i]) {
			FUNC2(lp->device, lp->tx_laddr[i], lp->tx_len[i], DMA_TO_DEVICE);
			lp->tx_laddr[i] = (dma_addr_t)0;
		}
		if(lp->tx_skb[i]) {
			FUNC1(lp->tx_skb[i]);
			lp->tx_skb[i] = NULL;
		}
	}

	/* unmap and free the receive buffers */
	for (i = 0; i < SONIC_NUM_RRS; i++) {
		if(lp->rx_laddr[i]) {
			FUNC2(lp->device, lp->rx_laddr[i], SONIC_RBSIZE, DMA_FROM_DEVICE);
			lp->rx_laddr[i] = (dma_addr_t)0;
		}
		if(lp->rx_skb[i]) {
			FUNC1(lp->rx_skb[i]);
			lp->rx_skb[i] = NULL;
		}
	}

	return 0;
}
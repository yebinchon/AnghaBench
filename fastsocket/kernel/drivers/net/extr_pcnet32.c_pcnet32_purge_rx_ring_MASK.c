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
struct pcnet32_private {int rx_ring_size; scalar_t__* rx_dma_addr; int /*<<< orphan*/ ** rx_skbuff; int /*<<< orphan*/  pci_dev; TYPE_1__* rx_ring; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ status; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PKT_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct pcnet32_private *lp = FUNC1(dev);
	int i;

	/* free all allocated skbuffs */
	for (i = 0; i < lp->rx_ring_size; i++) {
		lp->rx_ring[i].status = 0;	/* CPU owns buffer */
		FUNC3();		/* Make sure adapter sees owner change */
		if (lp->rx_skbuff[i]) {
			FUNC2(lp->pci_dev, lp->rx_dma_addr[i],
					 PKT_BUF_SIZE, PCI_DMA_FROMDEVICE);
			FUNC0(lp->rx_skbuff[i]);
		}
		lp->rx_skbuff[i] = NULL;
		lp->rx_dma_addr[i] = 0;
	}
}
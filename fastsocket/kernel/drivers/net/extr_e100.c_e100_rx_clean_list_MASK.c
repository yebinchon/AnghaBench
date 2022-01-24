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
struct rx {scalar_t__ skb; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_3__ {unsigned int count; } ;
struct TYPE_4__ {TYPE_1__ rfds; } ;
struct nic {int /*<<< orphan*/ * rx_to_clean; int /*<<< orphan*/  rx_to_use; struct rx* rxs; int /*<<< orphan*/  pdev; int /*<<< orphan*/  ru_running; TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  RFD_BUF_LEN ; 
 int /*<<< orphan*/  RU_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct nic *nic)
{
	struct rx *rx;
	unsigned int i, count = nic->params.rfds.count;

	nic->ru_running = RU_UNINITIALIZED;

	if (nic->rxs) {
		for (rx = nic->rxs, i = 0; i < count; rx++, i++) {
			if (rx->skb) {
				FUNC2(nic->pdev, rx->dma_addr,
					RFD_BUF_LEN, PCI_DMA_BIDIRECTIONAL);
				FUNC0(rx->skb);
			}
		}
		FUNC1(nic->rxs);
		nic->rxs = NULL;
	}

	nic->rx_to_use = *(nic->rx_to_clean = NULL);
}
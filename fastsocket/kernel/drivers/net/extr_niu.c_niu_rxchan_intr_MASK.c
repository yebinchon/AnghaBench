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
typedef  int u64 ;
struct rxdma_mailbox {int /*<<< orphan*/  rx_dma_ctl_stat; } ;
struct rx_ring_info {int /*<<< orphan*/  rx_channel; struct rxdma_mailbox* mbox; } ;
struct niu {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RX_DMA_CTL_STAT_RCRTHRES ; 
 int RX_DMA_CTL_STAT_RCRTO ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct niu *np, struct rx_ring_info *rp,
			    int ldn)
{
	struct rxdma_mailbox *mbox = rp->mbox;
	u64 stat_write, stat = FUNC1(&mbox->rx_dma_ctl_stat);

	stat_write = (RX_DMA_CTL_STAT_RCRTHRES |
		      RX_DMA_CTL_STAT_RCRTO);
	FUNC3(FUNC0(rp->rx_channel), stat_write);

	FUNC2(INTR, "%s: rxchan_intr stat[%llx]\n",
	       np->dev->name, (unsigned long long) stat);
}
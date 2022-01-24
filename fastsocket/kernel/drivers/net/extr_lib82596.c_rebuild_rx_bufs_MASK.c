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
struct net_device {int dummy; } ;
struct i596_private {TYPE_2__* rbd_head; TYPE_2__* rfd_head; struct i596_dma* dma; } ;
struct TYPE_3__ {void* rfd; } ;
struct i596_dma {TYPE_2__* rbds; TYPE_2__* rfds; TYPE_1__ scb; } ;
struct TYPE_4__ {void* rbd; void* cmd; } ;

/* Variables and functions */
 int CMD_EOL ; 
 int CMD_FLEX ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct i596_dma*,int) ; 
 void* I596_NULL ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct i596_private* FUNC3 (struct net_device*) ; 
 int rx_ring_size ; 
 int /*<<< orphan*/  FUNC4 (struct i596_private*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct i596_private *lp = FUNC3(dev);
	struct i596_dma *dma = lp->dma;
	int i;

	/* Ensure rx frame/buffer descriptors are tidy */

	for (i = 0; i < rx_ring_size; i++) {
		dma->rfds[i].rbd = I596_NULL;
		dma->rfds[i].cmd = FUNC1(CMD_FLEX);
	}
	dma->rfds[rx_ring_size-1].cmd = FUNC1(CMD_EOL|CMD_FLEX);
	lp->rfd_head = dma->rfds;
	dma->scb.rfd = FUNC2(FUNC4(lp, dma->rfds));
	lp->rbd_head = dma->rbds;
	dma->rfds[0].rbd = FUNC2(FUNC4(lp, dma->rbds));

	FUNC0(dev, dma, sizeof(struct i596_dma));
}
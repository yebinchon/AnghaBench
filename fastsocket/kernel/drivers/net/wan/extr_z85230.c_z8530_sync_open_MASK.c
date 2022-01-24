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
struct z8530_channel {int sync; int* regs; int /*<<< orphan*/  lock; scalar_t__ dma_tx; int /*<<< orphan*/ * irqs; int /*<<< orphan*/ * skb2; int /*<<< orphan*/ * skb; scalar_t__ count; scalar_t__ mtu; } ;
struct net_device {scalar_t__ mtu; } ;

/* Variables and functions */
 size_t R1 ; 
 size_t R3 ; 
 int RxENABLE ; 
 int TxINT_ENAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct z8530_channel*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct z8530_channel*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct z8530_channel*) ; 
 int /*<<< orphan*/  z8530_sync ; 

int FUNC5(struct net_device *dev, struct z8530_channel *c)
{
	unsigned long flags;

	FUNC0(c->lock, flags);

	c->sync = 1;
	c->mtu = dev->mtu+64;
	c->count = 0;
	c->skb = NULL;
	c->skb2 = NULL;
	c->irqs = &z8530_sync;

	/* This loads the double buffer up */
	FUNC4(c);	/* Load the frame ring */
	FUNC4(c);	/* Load the backup frame */
	FUNC3(c,1);
	c->dma_tx = 0;
	c->regs[R1]|=TxINT_ENAB;
	FUNC2(c, R1, c->regs[R1]);
	FUNC2(c, R3, c->regs[R3]|RxENABLE);

	FUNC1(c->lock, flags);
	return 0;
}
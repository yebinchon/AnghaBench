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
struct recv_desc_bufs {TYPE_1__* descriptors; int /*<<< orphan*/ ** recv_buf; } ;
struct net_device {int dummy; } ;
struct at91_private {scalar_t__ rxBuffIndex; struct recv_desc_bufs* dlist_phys; struct recv_desc_bufs* dlist; } ;
struct TYPE_2__ {unsigned int addr; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_EMAC_CTL ; 
 int /*<<< orphan*/  AT91_EMAC_RBQP ; 
 unsigned long AT91_EMAC_RE ; 
 unsigned long AT91_EMAC_TE ; 
 unsigned int EMAC_DESC_WRAP ; 
 int MAX_RX_DESCR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct at91_private* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct at91_private *lp = FUNC2(dev);
	struct recv_desc_bufs *dlist, *dlist_phys;
	int i;
	unsigned long ctl;

	dlist = lp->dlist;
	dlist_phys = lp->dlist_phys;

	for (i = 0; i < MAX_RX_DESCR; i++) {
		dlist->descriptors[i].addr = (unsigned int) &dlist_phys->recv_buf[i][0];
		dlist->descriptors[i].size = 0;
	}

	/* Set the Wrap bit on the last descriptor */
	dlist->descriptors[i-1].addr |= EMAC_DESC_WRAP;

	/* Reset buffer index */
	lp->rxBuffIndex = 0;

	/* Program address of descriptor list in Rx Buffer Queue register */
	FUNC1(AT91_EMAC_RBQP, (unsigned long) dlist_phys);

	/* Enable Receive and Transmit */
	ctl = FUNC0(AT91_EMAC_CTL);
	FUNC1(AT91_EMAC_CTL, ctl | AT91_EMAC_RE | AT91_EMAC_TE);
}
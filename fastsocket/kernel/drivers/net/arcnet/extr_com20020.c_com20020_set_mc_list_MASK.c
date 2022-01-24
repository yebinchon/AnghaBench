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
struct net_device {int base_addr; int flags; } ;
struct arcnet_local {int setup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  D_NORMAL ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int PROMISCset ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUB_SETUP1 ; 
 int /*<<< orphan*/  _XREG ; 
 struct arcnet_local* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct arcnet_local *lp = FUNC2(dev);
	int ioaddr = dev->base_addr;

	if ((dev->flags & IFF_PROMISC) && (dev->flags & IFF_UP)) {	/* Enable promiscuous mode */
		if (!(lp->setup & PROMISCset))
			FUNC0(D_NORMAL, "Setting promiscuous flag...\n");
		FUNC1(SUB_SETUP1);
		lp->setup |= PROMISCset;
		FUNC3(lp->setup, _XREG);
	} else
		/* Disable promiscuous mode, use normal mode */
	{
		if ((lp->setup & PROMISCset))
			FUNC0(D_NORMAL, "Resetting promiscuous flag...\n");
		FUNC1(SUB_SETUP1);
		lp->setup &= ~PROMISCset;
		FUNC3(lp->setup, _XREG);
	}
}
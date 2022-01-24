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
struct net_device {int flags; } ;
struct lance_regs {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; } ;
struct lance_private {scalar_t__ tx_old; scalar_t__ tx_new; int /*<<< orphan*/  multicast_timer; struct lance_regs* ll; struct lance_init_block* init_block; } ;
struct lance_init_block {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  LE_MO_PROM ; 
 int /*<<< orphan*/  FUNC0 (struct lance_private*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct lance_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9 (struct net_device *dev)
{
	struct lance_private *lp = FUNC5(dev);
	volatile struct lance_init_block *ib = lp->init_block;
	volatile struct lance_regs *ll = lp->ll;

	if (!FUNC6(dev))
		return;

	if (lp->tx_old != lp->tx_new) {
		FUNC4(&lp->multicast_timer, jiffies + 4);
		FUNC8(dev);
		return;
	}

	FUNC7(dev);

	ll->rap = LE_CSR0;
	ll->rdp = LE_C0_STOP;
	FUNC1 (dev);

	if (dev->flags & IFF_PROMISC) {
		ib->mode |= LE_MO_PROM;
	} else {
		ib->mode &= ~LE_MO_PROM;
		FUNC2 (dev);
	}
	FUNC3 (lp);
	FUNC0 (lp);
	FUNC8(dev);
}
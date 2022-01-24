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
struct lance_private {scalar_t__ tx_old; scalar_t__ tx_new; struct lance_init_block* init_block; } ;
struct lance_init_block {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int IFF_PROMISC ; 
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  LE_MO_PROM ; 
 int /*<<< orphan*/  FUNC0 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct lance_private*) ; 
 struct lance_private* FUNC6 (struct net_device*) ; 
 int FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11 (struct net_device *dev)
{
        struct lance_private *lp = FUNC6(dev);
        volatile struct lance_init_block *ib = lp->init_block;
	int stopped;

	stopped = FUNC7(dev);
	if (!stopped)
		FUNC9 (dev);

        while (lp->tx_old != lp->tx_new)
                FUNC10();

        FUNC0(lp, LE_CSR0);
        FUNC1(lp, LE_C0_STOP);
        FUNC3 (dev);

        if (dev->flags & IFF_PROMISC) {
                ib->mode |= LE_MO_PROM;
        } else {
                ib->mode &= ~LE_MO_PROM;
                FUNC4 (dev);
        }
        FUNC5 (lp);
        FUNC2 (lp);

	if (!stopped)
		FUNC8 (dev);
}
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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; scalar_t__ collisions; int /*<<< orphan*/  tx_fifo_errors; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  tx_errors; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  name; scalar_t__ mem_start; } ;
struct lance_regs {int /*<<< orphan*/  rdp; int /*<<< orphan*/  rap; } ;
struct lance_private {int tx_old; int tx_new; int /*<<< orphan*/  lock; int /*<<< orphan*/  type; struct lance_regs* ll; } ;

/* Variables and functions */
 int /*<<< orphan*/  LE_C0_STOP ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int LE_T1_EMORE ; 
 int LE_T1_EONE ; 
 int LE_T1_ERR ; 
 int LE_T1_OWN ; 
 int LE_T1_POK ; 
 int LE_T3_BUF ; 
 int LE_T3_CLOS ; 
 int LE_T3_LCOL ; 
 int LE_T3_RTY ; 
 int LE_T3_UFL ; 
 scalar_t__ TX_BUFFS_AVAIL ; 
 int TX_RING_MOD_MASK ; 
 int /*<<< orphan*/ * btx_ring ; 
 int /*<<< orphan*/  FUNC0 (struct lance_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lance_private*) ; 
 int /*<<< orphan*/  misc ; 
 struct lance_private* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int* FUNC10 (int /*<<< orphan*/  volatile*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tmd1 ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	struct lance_private *lp = FUNC4(dev);
	volatile u16 *ib = (volatile u16 *)dev->mem_start;
	volatile struct lance_regs *ll = lp->ll;
	volatile u16 *td;
	int i, j;
	int status;

	j = lp->tx_old;

	FUNC8(&lp->lock);

	for (i = j; i != lp->tx_new; i = j) {
		td = FUNC2(ib, btx_ring[i], lp->type);
		/* If we hit a packet not owned by us, stop */
		if (*FUNC10(td, tmd1, lp->type) & LE_T1_OWN)
			break;

		if (*FUNC10(td, tmd1, lp->type) & LE_T1_ERR) {
			status = *FUNC10(td, misc, lp->type);

			dev->stats.tx_errors++;
			if (status & LE_T3_RTY)
				dev->stats.tx_aborted_errors++;
			if (status & LE_T3_LCOL)
				dev->stats.tx_window_errors++;

			if (status & LE_T3_CLOS) {
				dev->stats.tx_carrier_errors++;
				FUNC7("%s: Carrier Lost\n", dev->name);
				/* Stop the lance */
				FUNC11(&ll->rap, LE_CSR0);
				FUNC11(&ll->rdp, LE_C0_STOP);
				FUNC1(dev);
				FUNC3(lp);
				FUNC0(lp);
				goto out;
			}
			/* Buffer errors and underflows turn off the
			 * transmitter, restart the adapter.
			 */
			if (status & (LE_T3_BUF | LE_T3_UFL)) {
				dev->stats.tx_fifo_errors++;

				FUNC7("%s: Tx: ERR_BUF|ERR_UFL, restarting\n",
				       dev->name);
				/* Stop the lance */
				FUNC11(&ll->rap, LE_CSR0);
				FUNC11(&ll->rdp, LE_C0_STOP);
				FUNC1(dev);
				FUNC3(lp);
				FUNC0(lp);
				goto out;
			}
		} else if ((*FUNC10(td, tmd1, lp->type) & LE_T1_POK) ==
			   LE_T1_POK) {
			/*
			 * So we don't count the packet more than once.
			 */
			*FUNC10(td, tmd1, lp->type) &= ~(LE_T1_POK);

			/* One collision before packet was sent. */
			if (*FUNC10(td, tmd1, lp->type) & LE_T1_EONE)
				dev->stats.collisions++;

			/* More than one collision, be optimistic. */
			if (*FUNC10(td, tmd1, lp->type) & LE_T1_EMORE)
				dev->stats.collisions += 2;

			dev->stats.tx_packets++;
		}
		j = (j + 1) & TX_RING_MOD_MASK;
	}
	lp->tx_old = j;
out:
	if (FUNC5(dev) &&
	    TX_BUFFS_AVAIL > 0)
		FUNC6(dev);

	FUNC9(&lp->lock);
}
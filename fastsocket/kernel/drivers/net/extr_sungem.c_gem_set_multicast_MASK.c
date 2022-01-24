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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct gem {int mac_rx_cfg; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_lock; scalar_t__ regs; int /*<<< orphan*/  running; } ;

/* Variables and functions */
 scalar_t__ MAC_RXCFG ; 
 int MAC_RXCFG_ENAB ; 
 int MAC_RXCFG_HFE ; 
 int MAC_RXCFG_PROM ; 
 int MAC_RXCFG_SFCS ; 
 int FUNC0 (struct gem*) ; 
 struct gem* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct gem *gp = FUNC1(dev);
	u32 rxcfg, rxcfg_new;
	int limit = 10000;


	FUNC6(&gp->lock);
	FUNC5(&gp->tx_lock);

	if (!gp->running)
		goto bail;

	FUNC2(dev);

	rxcfg = FUNC4(gp->regs + MAC_RXCFG);
	rxcfg_new = FUNC0(gp);
#ifdef STRIP_FCS
	rxcfg_new |= MAC_RXCFG_SFCS;
#endif
	gp->mac_rx_cfg = rxcfg_new;

	FUNC10(rxcfg & ~MAC_RXCFG_ENAB, gp->regs + MAC_RXCFG);
	while (FUNC4(gp->regs + MAC_RXCFG) & MAC_RXCFG_ENAB) {
		if (!limit--)
			break;
		FUNC9(10);
	}

	rxcfg &= ~(MAC_RXCFG_PROM | MAC_RXCFG_HFE);
	rxcfg |= rxcfg_new;

	FUNC10(rxcfg, gp->regs + MAC_RXCFG);

	FUNC3(dev);

 bail:
	FUNC7(&gp->tx_lock);
	FUNC8(&gp->lock);
}
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
struct cas {int mac_rx_cfg; int /*<<< orphan*/  lock; scalar_t__ regs; int /*<<< orphan*/  hw_running; } ;

/* Variables and functions */
 int MAC_RX_CFG_EN ; 
 int MAC_RX_CFG_HASH_FILTER_EN ; 
 int MAC_RX_CFG_PROMISC_EN ; 
 scalar_t__ REG_MAC_RX_CFG ; 
 int STOP_TRIES ; 
 int FUNC0 (struct cas*) ; 
 struct cas* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct cas *cp = FUNC1(dev);
	u32 rxcfg, rxcfg_new;
	unsigned long flags;
	int limit = STOP_TRIES;

	if (!cp->hw_running)
		return;

	FUNC3(&cp->lock, flags);
	rxcfg = FUNC2(cp->regs + REG_MAC_RX_CFG);

	/* disable RX MAC and wait for completion */
	FUNC6(rxcfg & ~MAC_RX_CFG_EN, cp->regs + REG_MAC_RX_CFG);
	while (FUNC2(cp->regs + REG_MAC_RX_CFG) & MAC_RX_CFG_EN) {
		if (!limit--)
			break;
		FUNC5(10);
	}

	/* disable hash filter and wait for completion */
	limit = STOP_TRIES;
	rxcfg &= ~(MAC_RX_CFG_PROMISC_EN | MAC_RX_CFG_HASH_FILTER_EN);
	FUNC6(rxcfg & ~MAC_RX_CFG_EN, cp->regs + REG_MAC_RX_CFG);
	while (FUNC2(cp->regs + REG_MAC_RX_CFG) & MAC_RX_CFG_HASH_FILTER_EN) {
		if (!limit--)
			break;
		FUNC5(10);
	}

	/* program hash filters */
	cp->mac_rx_cfg = rxcfg_new = FUNC0(cp);
	rxcfg |= rxcfg_new;
	FUNC6(rxcfg, cp->regs + REG_MAC_RX_CFG);
	FUNC4(&cp->lock, flags);
}
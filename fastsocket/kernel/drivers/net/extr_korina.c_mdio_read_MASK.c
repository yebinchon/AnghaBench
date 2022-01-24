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
struct net_device {int dummy; } ;
struct korina_private {int rx_irq; TYPE_1__* eth_regs; } ;
struct TYPE_2__ {int /*<<< orphan*/  miimrdd; int /*<<< orphan*/  miimcmd; int /*<<< orphan*/  miimaddr; int /*<<< orphan*/  miimcfg; } ;

/* Variables and functions */
 int ETH_MII_CMD_SCN ; 
 struct korina_private* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, int mii_id, int reg)
{
	struct korina_private *lp = FUNC0(dev);
	int ret;

	mii_id = ((lp->rx_irq == 0x2c ? 1 : 0) << 8);

	FUNC2(0, &lp->eth_regs->miimcfg);
	FUNC2(0, &lp->eth_regs->miimcmd);
	FUNC2(mii_id | reg, &lp->eth_regs->miimaddr);
	FUNC2(ETH_MII_CMD_SCN, &lp->eth_regs->miimcmd);

	ret = (int)(FUNC1(&lp->eth_regs->miimrdd));
	return ret;
}
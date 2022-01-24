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
struct smc_local {scalar_t__ phy_type; int ctl_rspeed; int tcr_cur_mode; int /*<<< orphan*/  lock; int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int maxtxpkt; int maxrxpkt; int supported; int /*<<< orphan*/  duplex; scalar_t__ port; int /*<<< orphan*/  transceiver; int /*<<< orphan*/  autoneg; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTONEG_DISABLE ; 
 int /*<<< orphan*/  DUPLEX_FULL ; 
 int /*<<< orphan*/  DUPLEX_HALF ; 
 int /*<<< orphan*/  SPEED_10 ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int SUPPORTED_10baseT_Full ; 
 int SUPPORTED_10baseT_Half ; 
 int SUPPORTED_AUI ; 
 int SUPPORTED_TP ; 
 int TCR_SWFDUP ; 
 int /*<<< orphan*/  XCVR_INTERNAL ; 
 int FUNC0 (int /*<<< orphan*/ *,struct ethtool_cmd*) ; 
 struct smc_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct smc_local *lp = FUNC1(dev);
	int ret;

	cmd->maxtxpkt = 1;
	cmd->maxrxpkt = 1;

	if (lp->phy_type != 0) {
		FUNC2(&lp->lock);
		ret = FUNC0(&lp->mii, cmd);
		FUNC3(&lp->lock);
	} else {
		cmd->supported = SUPPORTED_10baseT_Half |
				 SUPPORTED_10baseT_Full |
				 SUPPORTED_TP | SUPPORTED_AUI;

		if (lp->ctl_rspeed == 10)
			cmd->speed = SPEED_10;
		else if (lp->ctl_rspeed == 100)
			cmd->speed = SPEED_100;

		cmd->autoneg = AUTONEG_DISABLE;
		cmd->transceiver = XCVR_INTERNAL;
		cmd->port = 0;
		cmd->duplex = lp->tcr_cur_mode & TCR_SWFDUP ? DUPLEX_FULL : DUPLEX_HALF;

		ret = 0;
	}

	return ret;
}
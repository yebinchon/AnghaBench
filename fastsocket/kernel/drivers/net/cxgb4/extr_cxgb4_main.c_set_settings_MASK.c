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
typedef  scalar_t__ u32 ;
struct link_config {unsigned int supported; unsigned int requested_speed; unsigned int advertising; scalar_t__ autoneg; } ;
struct port_info {int /*<<< orphan*/  tx_chan; TYPE_1__* adapter; struct link_config link_cfg; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {scalar_t__ duplex; scalar_t__ autoneg; int /*<<< orphan*/  advertising; } ;
struct TYPE_2__ {int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 int EINVAL ; 
 unsigned int FW_PORT_CAP_ANEG ; 
 scalar_t__ SPEED_1000 ; 
 scalar_t__ SPEED_10000 ; 
 scalar_t__ FUNC0 (struct ethtool_cmd*) ; 
 struct port_info* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct link_config*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ethtool_cmd *cmd)
{
	unsigned int cap;
	struct port_info *p = FUNC1(dev);
	struct link_config *lc = &p->link_cfg;
	u32 speed = FUNC0(cmd);

	if (cmd->duplex != DUPLEX_FULL)     /* only full-duplex supported */
		return -EINVAL;

	if (!(lc->supported & FW_PORT_CAP_ANEG)) {
		/*
		 * PHY offers a single speed.  See if that's what's
		 * being requested.
		 */
		if (cmd->autoneg == AUTONEG_DISABLE &&
		    (lc->supported & FUNC3(speed)))
			return 0;
		return -EINVAL;
	}

	if (cmd->autoneg == AUTONEG_DISABLE) {
		cap = FUNC3(speed);

		if (!(lc->supported & cap) || (speed == SPEED_1000) ||
		    (speed == SPEED_10000))
			return -EINVAL;
		lc->requested_speed = cap;
		lc->advertising = 0;
	} else {
		cap = FUNC5(cmd->advertising);
		if (!(lc->supported & cap))
			return -EINVAL;
		lc->requested_speed = 0;
		lc->advertising = cap | FW_PORT_CAP_ANEG;
	}
	lc->autoneg = cmd->autoneg;

	if (FUNC2(dev))
		return FUNC4(p->adapter, p->adapter->fn, p->tx_chan,
				     lc);
	return 0;
}
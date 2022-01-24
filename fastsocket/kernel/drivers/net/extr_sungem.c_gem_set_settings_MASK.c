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
struct net_device {int dummy; } ;
struct gem {int /*<<< orphan*/  lock; } ;
struct ethtool_cmd {scalar_t__ autoneg; scalar_t__ advertising; scalar_t__ speed; scalar_t__ duplex; } ;

/* Variables and functions */
 scalar_t__ AUTONEG_DISABLE ; 
 scalar_t__ AUTONEG_ENABLE ; 
 scalar_t__ DUPLEX_FULL ; 
 scalar_t__ DUPLEX_HALF ; 
 int EINVAL ; 
 scalar_t__ SPEED_10 ; 
 scalar_t__ SPEED_100 ; 
 scalar_t__ SPEED_1000 ; 
 int /*<<< orphan*/  FUNC0 (struct gem*,struct ethtool_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 struct gem* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct gem *gp = FUNC3(dev);

	/* Verify the settings we care about. */
	if (cmd->autoneg != AUTONEG_ENABLE &&
	    cmd->autoneg != AUTONEG_DISABLE)
		return -EINVAL;

	if (cmd->autoneg == AUTONEG_ENABLE &&
	    cmd->advertising == 0)
		return -EINVAL;

	if (cmd->autoneg == AUTONEG_DISABLE &&
	    ((cmd->speed != SPEED_1000 &&
	      cmd->speed != SPEED_100 &&
	      cmd->speed != SPEED_10) ||
	     (cmd->duplex != DUPLEX_HALF &&
	      cmd->duplex != DUPLEX_FULL)))
		return -EINVAL;

	/* Apply settings and restart link process. */
	FUNC4(&gp->lock);
	FUNC1(gp);
	FUNC0(gp, cmd);
	FUNC2(gp);
	FUNC5(&gp->lock);

	return 0;
}
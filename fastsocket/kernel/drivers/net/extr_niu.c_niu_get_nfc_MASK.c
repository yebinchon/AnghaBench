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
typedef  int /*<<< orphan*/  u32 ;
struct niu {int /*<<< orphan*/  num_rx_rings; } ;
struct net_device {int dummy; } ;
struct ethtool_rxnfc {int cmd; int /*<<< orphan*/  rule_cnt; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EINVAL ; 
#define  ETHTOOL_GRXCLSRLALL 132 
#define  ETHTOOL_GRXCLSRLCNT 131 
#define  ETHTOOL_GRXCLSRULE 130 
#define  ETHTOOL_GRXFH 129 
#define  ETHTOOL_GRXRINGS 128 
 struct niu* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct niu*,struct ethtool_rxnfc*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct niu*,struct ethtool_rxnfc*) ; 
 int FUNC3 (struct niu*,struct ethtool_rxnfc*) ; 
 int /*<<< orphan*/  FUNC4 (struct niu*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct ethtool_rxnfc *cmd,
		       void *rule_locs)
{
	struct niu *np = FUNC0(dev);
	int ret = 0;

	switch (cmd->cmd) {
	case ETHTOOL_GRXFH:
		ret = FUNC3(np, cmd);
		break;
	case ETHTOOL_GRXRINGS:
		cmd->data = np->num_rx_rings;
		break;
	case ETHTOOL_GRXCLSRLCNT:
		cmd->rule_cnt = FUNC4(np);
		break;
	case ETHTOOL_GRXCLSRULE:
		ret = FUNC2(np, cmd);
		break;
	case ETHTOOL_GRXCLSRLALL:
		ret = FUNC1(np, cmd, (u32 *)rule_locs);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}
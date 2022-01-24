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
struct rtl8169_private {int /*<<< orphan*/  timer; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int /*<<< orphan*/  advertising; int /*<<< orphan*/  duplex; int /*<<< orphan*/  autoneg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ethtool_cmd*) ; 
 struct rtl8169_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtl8169_private*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct rtl8169_private *tp = FUNC2(dev);
	int ret;

	FUNC0(&tp->timer);

	FUNC4(tp);
	ret = FUNC3(dev, cmd->autoneg, FUNC1(cmd),
				cmd->duplex, cmd->advertising);
	FUNC5(tp);

	return ret;
}
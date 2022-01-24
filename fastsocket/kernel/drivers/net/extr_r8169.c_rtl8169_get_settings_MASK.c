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
struct rtl8169_private {int (* get_settings ) (struct net_device*,struct ethtool_cmd*) ;} ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;

/* Variables and functions */
 struct rtl8169_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8169_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8169_private*) ; 
 int FUNC3 (struct net_device*,struct ethtool_cmd*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev, struct ethtool_cmd *cmd)
{
	struct rtl8169_private *tp = FUNC0(dev);
	int rc;

	FUNC1(tp);
	rc = tp->get_settings(dev, cmd);
	FUNC2(tp);

	return rc;
}
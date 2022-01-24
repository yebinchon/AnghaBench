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
typedef  int /*<<< orphan*/  u8 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;

/* Variables and functions */
 int /*<<< orphan*/  AX_CMD_WRITE_MONITOR_MODE ; 
 int /*<<< orphan*/  AX_MONITOR_LINK ; 
 int /*<<< orphan*/  AX_MONITOR_MAGIC ; 
 int /*<<< orphan*/  AX_MONITOR_MODE ; 
 int EINVAL ; 
 int WAKE_MAGIC ; 
 int WAKE_PHY ; 
 scalar_t__ FUNC0 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct usbnet* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int
FUNC2(struct net_device *net, struct ethtool_wolinfo *wolinfo)
{
	struct usbnet *dev = FUNC1(net);
	u8 opt = 0;

	if (wolinfo->wolopts & WAKE_PHY)
		opt |= AX_MONITOR_LINK;
	if (wolinfo->wolopts & WAKE_MAGIC)
		opt |= AX_MONITOR_MAGIC;
	if (opt != 0)
		opt |= AX_MONITOR_MODE;

	if (FUNC0(dev, AX_CMD_WRITE_MONITOR_MODE,
			      opt, 0, 0, NULL) < 0)
		return -EINVAL;

	return 0;
}
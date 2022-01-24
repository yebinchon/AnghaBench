#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mdio_write; } ;
struct usbnet {TYPE_1__* driver_info; TYPE_2__ mii; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* link_reset ) (struct usbnet*) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (TYPE_2__*,struct ethtool_cmd*) ; 
 struct usbnet* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usbnet*) ; 

int FUNC3 (struct net_device *net, struct ethtool_cmd *cmd)
{
	struct usbnet *dev = FUNC1(net);
	int retval;

	if (!dev->mii.mdio_write)
		return -EOPNOTSUPP;

	retval = FUNC0(&dev->mii, cmd);

	/* link speed/duplex might have changed */
	if (dev->driver_info->link_reset)
		dev->driver_info->link_reset(dev);

	return retval;

}
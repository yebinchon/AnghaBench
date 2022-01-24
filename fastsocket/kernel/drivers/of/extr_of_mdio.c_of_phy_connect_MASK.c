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
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;

/* Variables and functions */
 struct phy_device* FUNC0 (struct device_node*) ; 
 scalar_t__ FUNC1 (struct net_device*,struct phy_device*,void (*) (struct net_device*),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct phy_device *FUNC2(struct net_device *dev,
				  struct device_node *phy_np,
				  void (*hndlr)(struct net_device *), u32 flags,
				  phy_interface_t iface)
{
	struct phy_device *phy = FUNC0(phy_np);

	if (!phy)
		return NULL;

	return FUNC1(dev, phy, hndlr, flags, iface) ? NULL : phy;
}
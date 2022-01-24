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
typedef  int /*<<< orphan*/  u32 ;
struct phy_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  phy_interface_t ;
struct TYPE_3__ {int /*<<< orphan*/  archdata; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct phy_device*) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 char* PHY_ID_FMT ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 struct phy_device* FUNC3 (struct net_device*,char*,void (*) (struct net_device*),int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int /*<<< orphan*/  const) ; 

struct phy_device *FUNC5(struct net_device *dev,
					     void (*hndlr)(struct net_device *),
					     phy_interface_t iface)
{
	struct device_node *net_np;
	char bus_id[MII_BUS_ID_SIZE + 3];
	struct phy_device *phy;
	const u32 *phy_id;
	int sz;

	if (!dev->dev.parent)
		return NULL;

	net_np = FUNC1(&dev->dev.parent->archdata);
	if (!net_np)
		return NULL;

	phy_id = FUNC2(net_np, "fixed-link", &sz);
	if (!phy_id || sz < sizeof(*phy_id))
		return NULL;

	FUNC4(bus_id, PHY_ID_FMT, "0", phy_id[0]);

	phy = FUNC3(dev, bus_id, hndlr, 0, iface);
	return FUNC0(phy) ? NULL : phy;
}
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
struct device {int dummy; } ;
struct vio_dev {struct device dev; } ;
struct veth_port {int lpar_map; int /*<<< orphan*/  kobject; int /*<<< orphan*/  mac_addr; struct device* dev; scalar_t__ stopped_map; int /*<<< orphan*/  mcast_gate; int /*<<< orphan*/  queue_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct net_device {int name; TYPE_1__ dev; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  mtu; int /*<<< orphan*/ * dev_addr; } ;
typedef  int HvLpVirtualLanIndexMap ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int HVMAXARCHITECTEDLPS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct device*) ; 
 int /*<<< orphan*/  VETH_MAX_MTU ; 
 struct net_device* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char const*,int /*<<< orphan*/ ) ; 
 struct veth_port* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  ops ; 
 int FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int this_lp ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int,int) ; 
 int /*<<< orphan*/  veth_netdev_ops ; 
 int /*<<< orphan*/  veth_port_ktype ; 
 unsigned char* FUNC14 (struct vio_dev*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct net_device *FUNC15(int vlan,
		struct vio_dev *vio_dev)
{
	struct net_device *dev;
	struct veth_port *port;
	struct device *vdev = &vio_dev->dev;
	int i, rc;
	const unsigned char *mac_addr;

	mac_addr = FUNC14(vio_dev, "local-mac-address", NULL);
	if (mac_addr == NULL)
		mac_addr = FUNC14(vio_dev, "mac-address", NULL);
	if (mac_addr == NULL) {
		FUNC12("Unable to fetch MAC address from device tree.\n");
		return NULL;
	}

	dev = FUNC3(sizeof (struct veth_port));
	if (! dev) {
		FUNC12("Unable to allocate net_device structure!\n");
		return NULL;
	}

	port = FUNC8(dev);

	FUNC11(&port->queue_lock);
	FUNC10(&port->mcast_gate);
	port->stopped_map = 0;

	for (i = 0; i < HVMAXARCHITECTEDLPS; i++) {
		HvLpVirtualLanIndexMap map;

		if (i == this_lp)
			continue;
		map = FUNC0(i);
		if (map & (0x8000 >> vlan))
			port->lpar_map |= (1 << i);
	}
	port->dev = vdev;

	FUNC7(dev->dev_addr, mac_addr, ETH_ALEN);

	dev->mtu = VETH_MAX_MTU;

	FUNC7(&port->mac_addr, mac_addr, ETH_ALEN);

	dev->netdev_ops = &veth_netdev_ops;
	FUNC1(dev, &ops);

	FUNC2(dev, vdev);

	rc = FUNC9(dev);
	if (rc != 0) {
		FUNC12("Failed registering net device for vlan%d.\n", vlan);
		FUNC4(dev);
		return NULL;
	}

	FUNC6(&port->kobject, &veth_port_ktype);
	if (0 != FUNC5(&port->kobject, &dev->dev.kobj, "veth_port"))
		FUNC12("Failed adding port for %s to sysfs.\n", dev->name);

	FUNC13("%s attached to iSeries vlan %d (LPAR map = 0x%.4X)\n",
			dev->name, vlan, port->lpar_map);

	return dev;
}
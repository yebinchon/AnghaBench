
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct vio_dev {struct device dev; } ;
struct veth_port {int lpar_map; int kobject; int mac_addr; struct device* dev; scalar_t__ stopped_map; int mcast_gate; int queue_lock; } ;
struct TYPE_2__ {int kobj; } ;
struct net_device {int name; TYPE_1__ dev; int * netdev_ops; int mtu; int * dev_addr; } ;
typedef int HvLpVirtualLanIndexMap ;


 int ETH_ALEN ;
 int HVMAXARCHITECTEDLPS ;
 int HvLpConfig_getVirtualLanIndexMapForLp (int) ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int SET_NETDEV_DEV (struct net_device*,struct device*) ;
 int VETH_MAX_MTU ;
 struct net_device* alloc_etherdev (int) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ kobject_add (int *,int *,char*) ;
 int kobject_init (int *,int *) ;
 int memcpy (int *,unsigned char const*,int ) ;
 struct veth_port* netdev_priv (struct net_device*) ;
 int ops ;
 int register_netdev (struct net_device*) ;
 int rwlock_init (int *) ;
 int spin_lock_init (int *) ;
 int this_lp ;
 int veth_error (char*,...) ;
 int veth_info (char*,int,int,int) ;
 int veth_netdev_ops ;
 int veth_port_ktype ;
 unsigned char* vio_get_attribute (struct vio_dev*,char*,int *) ;

__attribute__((used)) static struct net_device *veth_probe_one(int vlan,
  struct vio_dev *vio_dev)
{
 struct net_device *dev;
 struct veth_port *port;
 struct device *vdev = &vio_dev->dev;
 int i, rc;
 const unsigned char *mac_addr;

 mac_addr = vio_get_attribute(vio_dev, "local-mac-address", ((void*)0));
 if (mac_addr == ((void*)0))
  mac_addr = vio_get_attribute(vio_dev, "mac-address", ((void*)0));
 if (mac_addr == ((void*)0)) {
  veth_error("Unable to fetch MAC address from device tree.\n");
  return ((void*)0);
 }

 dev = alloc_etherdev(sizeof (struct veth_port));
 if (! dev) {
  veth_error("Unable to allocate net_device structure!\n");
  return ((void*)0);
 }

 port = netdev_priv(dev);

 spin_lock_init(&port->queue_lock);
 rwlock_init(&port->mcast_gate);
 port->stopped_map = 0;

 for (i = 0; i < HVMAXARCHITECTEDLPS; i++) {
  HvLpVirtualLanIndexMap map;

  if (i == this_lp)
   continue;
  map = HvLpConfig_getVirtualLanIndexMapForLp(i);
  if (map & (0x8000 >> vlan))
   port->lpar_map |= (1 << i);
 }
 port->dev = vdev;

 memcpy(dev->dev_addr, mac_addr, ETH_ALEN);

 dev->mtu = VETH_MAX_MTU;

 memcpy(&port->mac_addr, mac_addr, ETH_ALEN);

 dev->netdev_ops = &veth_netdev_ops;
 SET_ETHTOOL_OPS(dev, &ops);

 SET_NETDEV_DEV(dev, vdev);

 rc = register_netdev(dev);
 if (rc != 0) {
  veth_error("Failed registering net device for vlan%d.\n", vlan);
  free_netdev(dev);
  return ((void*)0);
 }

 kobject_init(&port->kobject, &veth_port_ktype);
 if (0 != kobject_add(&port->kobject, &dev->dev.kobj, "veth_port"))
  veth_error("Failed adding port for %s to sysfs.\n", dev->name);

 veth_info("%s attached to iSeries vlan %d (LPAR map = 0x%.4X)\n",
   dev->name, vlan, port->lpar_map);

 return dev;
}

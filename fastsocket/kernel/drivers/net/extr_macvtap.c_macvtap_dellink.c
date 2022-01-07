
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvlan_dev {int minor; } ;


 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;
 int device_destroy (int ,int ) ;
 int macvlan_dellink (struct net_device*) ;
 int macvtap_class ;
 int macvtap_del_queues (struct net_device*) ;
 int macvtap_free_minor (struct macvlan_dev*) ;
 int macvtap_major ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static void macvtap_dellink(struct net_device *dev)
{
 struct macvlan_dev *vlan;

 vlan = netdev_priv(dev);
 device_destroy(macvtap_class,
         MKDEV(MAJOR(macvtap_major), vlan->minor));

 macvtap_del_queues(dev);
 macvlan_dellink(dev);
 macvtap_free_minor(vlan);
}

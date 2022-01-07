
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {int ifindex; int dev; } ;
struct macvlan_dev {int tap_features; int minor; } ;
struct device {int dummy; } ;
typedef int dev_t ;


 scalar_t__ IS_ERR (struct device*) ;
 int MAJOR (int ) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (struct device*) ;
 int TUN_OFFLOADS ;
 struct device* device_create (int ,int *,int ,struct net_device*,char*,int ) ;
 int macvlan_common_newlink (struct net_device*,struct nlattr**,struct nlattr**,int ,int ) ;
 int macvtap_class ;
 int macvtap_del_queues (struct net_device*) ;
 int macvtap_forward ;
 int macvtap_free_minor (struct macvlan_dev*) ;
 int macvtap_get_minor (struct macvlan_dev*) ;
 int macvtap_major ;
 int macvtap_receive ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int notifier_from_errno (int) ;

__attribute__((used)) static int macvtap_newlink(struct net_device *dev,
      struct nlattr *tb[],
      struct nlattr *data[])
{
 struct device *classdev;
 struct macvlan_dev *vlan;
 dev_t devt;
 int err;

 err = macvlan_common_newlink(dev, tb, data,
         macvtap_receive, macvtap_forward);
 if (err)
  goto out;

 vlan = netdev_priv(dev);
 err = macvtap_get_minor(vlan);
 if (err)
  return notifier_from_errno(err);

 devt = MKDEV(MAJOR(macvtap_major), vlan->minor);

 classdev = device_create(macvtap_class, &dev->dev, devt,
     dev, "tap%d", dev->ifindex);
 if (IS_ERR(classdev)) {
  err = PTR_ERR(classdev);
  macvtap_del_queues(dev);
  macvtap_free_minor(vlan);
 }

 vlan->tap_features = TUN_OFFLOADS;

out:
 return err;
}

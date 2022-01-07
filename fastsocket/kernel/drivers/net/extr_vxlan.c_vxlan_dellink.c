
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_net {int sock_lock; } ;
struct vxlan_dev {int next; int hlist; } ;
struct net_device {int dummy; } ;


 int dev_net (struct net_device*) ;
 int hlist_del_rcu (int *) ;
 int hlist_unhashed (int *) ;
 int list_del (int *) ;
 struct vxlan_net* net_generic (int ,int ) ;
 struct vxlan_dev* netdev_priv (struct net_device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unregister_netdevice (struct net_device*) ;
 int vxlan_net_id ;

__attribute__((used)) static void vxlan_dellink(struct net_device *dev)
{
 struct vxlan_net *vn = net_generic(dev_net(dev), vxlan_net_id);
 struct vxlan_dev *vxlan = netdev_priv(dev);

 spin_lock(&vn->sock_lock);
 if (!hlist_unhashed(&vxlan->hlist))
  hlist_del_rcu(&vxlan->hlist);
 spin_unlock(&vn->sock_lock);

 list_del(&vxlan->next);
 unregister_netdevice(dev);
}

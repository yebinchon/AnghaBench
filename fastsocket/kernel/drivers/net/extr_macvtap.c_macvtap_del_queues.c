
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct macvtap_queue {int sk; int vlan; } ;
struct macvlan_dev {int tap; } ;


 struct macvlan_dev* netdev_priv (struct net_device*) ;
 int rcu_assign_pointer (int ,int *) ;
 struct macvtap_queue* rtnl_dereference (int ) ;
 int sock_put (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void macvtap_del_queues(struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);
 struct macvtap_queue *q;

 q = rtnl_dereference(vlan->tap);
 if (!q)
  return;

 rcu_assign_pointer(vlan->tap, ((void*)0));
 rcu_assign_pointer(q->vlan, ((void*)0));

 synchronize_rcu();
 sock_put(&q->sk);
}

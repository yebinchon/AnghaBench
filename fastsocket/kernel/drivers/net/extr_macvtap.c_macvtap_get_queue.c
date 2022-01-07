
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct macvtap_queue {int dummy; } ;
struct macvlan_dev {int tap; } ;


 struct macvlan_dev* netdev_priv (struct net_device*) ;
 struct macvtap_queue* rcu_dereference (int ) ;

__attribute__((used)) static struct macvtap_queue *macvtap_get_queue(struct net_device *dev,
            struct sk_buff *skb)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 return rcu_dereference(vlan->tap);
}

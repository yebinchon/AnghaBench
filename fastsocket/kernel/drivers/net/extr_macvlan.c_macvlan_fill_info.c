
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct macvlan_dev {int mode; } ;


 int EMSGSIZE ;
 int IFLA_MACVLAN_MODE ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 struct macvlan_dev* netdev_priv (struct net_device const*) ;

__attribute__((used)) static int macvlan_fill_info(struct sk_buff *skb,
    const struct net_device *dev)
{
 struct macvlan_dev *vlan = netdev_priv(dev);

 NLA_PUT_U32(skb, IFLA_MACVLAN_MODE, vlan->mode);
 return 0;

nla_put_failure:
 return -EMSGSIZE;
}

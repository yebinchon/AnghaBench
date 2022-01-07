
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {int dummy; } ;


 int dev_forward_skb ;
 int macvlan_common_newlink (struct net_device*,struct nlattr**,struct nlattr**,int ,int ) ;
 int netif_rx ;

__attribute__((used)) static int macvlan_newlink(struct net_device *dev,
      struct nlattr *tb[], struct nlattr *data[])
{
 return macvlan_common_newlink(dev, tb, data,
          netif_rx,
          dev_forward_skb);
}

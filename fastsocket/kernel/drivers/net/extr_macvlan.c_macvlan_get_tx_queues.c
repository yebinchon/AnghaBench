
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct net_device {unsigned int num_tx_queues; unsigned int real_num_tx_queues; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 size_t IFLA_LINK ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 int nla_get_u32 (struct nlattr*) ;

__attribute__((used)) static int macvlan_get_tx_queues(struct net *net,
     struct nlattr *tb[],
     unsigned int *num_tx_queues,
     unsigned int *real_num_tx_queues)
{
 struct net_device *real_dev;

 if (!tb[IFLA_LINK])
  return -EINVAL;

 real_dev = __dev_get_by_index(net, nla_get_u32(tb[IFLA_LINK]));
 if (!real_dev)
  return -ENODEV;

 *num_tx_queues = real_dev->num_tx_queues;
 *real_num_tx_queues = real_dev->real_num_tx_queues;
 return 0;
}

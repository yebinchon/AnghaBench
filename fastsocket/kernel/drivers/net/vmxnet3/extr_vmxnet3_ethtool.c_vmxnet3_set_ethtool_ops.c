
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int set_ethtool_ops_ext (struct net_device*,int *) ;
 int vmxnet3_ethtool_ops ;
 int vmxnet3_ethtool_ops_ext ;

void vmxnet3_set_ethtool_ops(struct net_device *netdev)
{
 SET_ETHTOOL_OPS(netdev, &vmxnet3_ethtool_ops);
 set_ethtool_ops_ext(netdev, &vmxnet3_ethtool_ops_ext);
}

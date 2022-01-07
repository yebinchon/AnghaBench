
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct bnx2x {int dummy; } ;


 scalar_t__ IS_PF (struct bnx2x*) ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int bnx2x_ethtool_ops ;
 int bnx2x_ethtool_ops_ext ;
 int bnx2x_vf_ethtool_ops ;
 int bnx2x_vf_ethtool_ops_ext ;
 int set_ethtool_ops_ext (struct net_device*,int *) ;

void bnx2x_set_ethtool_ops(struct bnx2x *bp, struct net_device *netdev)
{
 if (IS_PF(bp)) {
  SET_ETHTOOL_OPS(netdev, &bnx2x_ethtool_ops);
  set_ethtool_ops_ext(netdev, &bnx2x_ethtool_ops_ext);
 } else {
  SET_ETHTOOL_OPS(netdev, &bnx2x_vf_ethtool_ops);
  set_ethtool_ops_ext(netdev, &bnx2x_vf_ethtool_ops_ext);
 }
}

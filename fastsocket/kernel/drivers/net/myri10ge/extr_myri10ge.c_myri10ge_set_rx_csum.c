
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct myri10ge_priv {scalar_t__ csum_flag; } ;


 int ETH_FLAG_LRO ;
 scalar_t__ MXGEFW_FLAGS_CKSUM ;
 int ethtool_op_get_flags (struct net_device*) ;
 int ethtool_op_set_flags (struct net_device*,int) ;
 struct myri10ge_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int myri10ge_set_rx_csum(struct net_device *netdev, u32 csum_enabled)
{
 struct myri10ge_priv *mgp = netdev_priv(netdev);
 int err = 0;

 if (csum_enabled)
  mgp->csum_flag = MXGEFW_FLAGS_CKSUM;
 else {
  u32 flags = ethtool_op_get_flags(netdev);
  err = ethtool_op_set_flags(netdev, (flags & ~ETH_FLAG_LRO));
  mgp->csum_flag = 0;

 }
 return err;
}

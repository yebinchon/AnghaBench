
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ETH_FLAG_LRO ;
 int ethtool_op_set_flags (struct net_device*,int) ;

__attribute__((used)) static int ehea_set_flags(struct net_device *dev, u32 data)
{
 if (data & ~ETH_FLAG_LRO)
  return -EINVAL;
 return ethtool_op_set_flags(dev, data);
}

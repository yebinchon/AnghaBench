
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct fe_priv {int driver_data; } ;


 int DEV_HAS_CHECKSUM ;
 int EOPNOTSUPP ;
 int ethtool_op_set_tso (struct net_device*,int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nv_set_tso(struct net_device *dev, u32 value)
{
 struct fe_priv *np = netdev_priv(dev);

 if ((np->driver_data & DEV_HAS_CHECKSUM))
  return ethtool_op_set_tso(dev, value);
 else
  return -EOPNOTSUPP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {int device_flags; } ;


 int EOPNOTSUPP ;

 int FSL_GIANFAR_DEV_HAS_RMON ;
 int GFAR_EXTRA_STATS_LEN ;
 int GFAR_STATS_LEN ;
 struct gfar_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gfar_sset_count(struct net_device *dev, int sset)
{
 struct gfar_private *priv = netdev_priv(dev);

 switch (sset) {
 case 128:
  if (priv->device_flags & FSL_GIANFAR_DEV_HAS_RMON)
   return GFAR_STATS_LEN;
  else
   return GFAR_EXTRA_STATS_LEN;
 default:
  return -EOPNOTSUPP;
 }
}

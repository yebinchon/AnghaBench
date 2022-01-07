
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {struct net_device* mesh_dev; } ;


 int EOPNOTSUPP ;
 int ETH_SS_STATS ;
 int MESH_STATS_NUM ;

__attribute__((used)) static int lbs_ethtool_get_sset_count(struct net_device *dev, int sset)
{
 struct lbs_private *priv = dev->ml_priv;

 if (sset == ETH_SS_STATS && dev == priv->mesh_dev)
  return MESH_STATS_NUM;

 return -EOPNOTSUPP;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fe_priv {int driver_data; } ;


 int DEV_HAS_STATISTICS_V1 ;
 int DEV_HAS_STATISTICS_V2 ;
 int DEV_HAS_STATISTICS_V3 ;
 int DEV_HAS_TEST_EXTENDED ;
 int EOPNOTSUPP ;


 int NV_DEV_STATISTICS_V1_COUNT ;
 int NV_DEV_STATISTICS_V2_COUNT ;
 int NV_DEV_STATISTICS_V3_COUNT ;
 int NV_TEST_COUNT_BASE ;
 int NV_TEST_COUNT_EXTENDED ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int nv_get_sset_count(struct net_device *dev, int sset)
{
 struct fe_priv *np = netdev_priv(dev);

 switch (sset) {
 case 128:
  if (np->driver_data & DEV_HAS_TEST_EXTENDED)
   return NV_TEST_COUNT_EXTENDED;
  else
   return NV_TEST_COUNT_BASE;
 case 129:
  if (np->driver_data & DEV_HAS_STATISTICS_V3)
   return NV_DEV_STATISTICS_V3_COUNT;
  else if (np->driver_data & DEV_HAS_STATISTICS_V2)
   return NV_DEV_STATISTICS_V2_COUNT;
  else if (np->driver_data & DEV_HAS_STATISTICS_V1)
   return NV_DEV_STATISTICS_V1_COUNT;
  else
   return 0;
 default:
  return -EOPNOTSUPP;
 }
}

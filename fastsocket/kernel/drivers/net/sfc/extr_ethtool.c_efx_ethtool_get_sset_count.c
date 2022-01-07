
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EFX_ETHTOOL_NUM_STATS ;
 int EINVAL ;


 int efx_ethtool_fill_self_tests (int ,int *,int *,int *) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int efx_ethtool_get_sset_count(struct net_device *net_dev,
          int string_set)
{
 switch (string_set) {
 case 129:
  return EFX_ETHTOOL_NUM_STATS;
 case 128:
  return efx_ethtool_fill_self_tests(netdev_priv(net_dev),
         ((void*)0), ((void*)0), ((void*)0));
 default:
  return -EINVAL;
 }
}

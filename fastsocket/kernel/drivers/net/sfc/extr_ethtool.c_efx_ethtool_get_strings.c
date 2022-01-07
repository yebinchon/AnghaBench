
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_string {int name; } ;
struct efx_nic {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int EFX_ETHTOOL_NUM_STATS ;


 int efx_ethtool_fill_self_tests (struct efx_nic*,int *,struct ethtool_string*,int *) ;
 TYPE_1__* efx_ethtool_stats ;
 struct efx_nic* netdev_priv (struct net_device*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void efx_ethtool_get_strings(struct net_device *net_dev,
        u32 string_set, u8 *strings)
{
 struct efx_nic *efx = netdev_priv(net_dev);
 struct ethtool_string *ethtool_strings =
  (struct ethtool_string *)strings;
 int i;

 switch (string_set) {
 case 129:
  for (i = 0; i < EFX_ETHTOOL_NUM_STATS; i++)
   strlcpy(ethtool_strings[i].name,
    efx_ethtool_stats[i].name,
    sizeof(ethtool_strings[i].name));
  break;
 case 128:
  efx_ethtool_fill_self_tests(efx, ((void*)0),
         ethtool_strings, ((void*)0));
  break;
 default:

  break;
 }
}

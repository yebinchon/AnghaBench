
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_6__ {int * pxofftxc; int * pxoffrxc; } ;
struct TYPE_4__ {int pfc_tcs; } ;
struct TYPE_5__ {TYPE_1__ num_tcs; } ;
struct ixgbe_adapter {TYPE_3__ stats; TYPE_2__ dcb_cfg; struct ieee_pfc* ixgbe_ieee_pfc; } ;
struct ieee_pfc {int * indications; int * requests; int delay; int mbc; int pfc_en; int pfc_cap; } ;


 int MAX_TRAFFIC_CLASS ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_dcbnl_ieee_getpfc(struct net_device *dev,
       struct ieee_pfc *pfc)
{
 struct ixgbe_adapter *adapter = netdev_priv(dev);
 struct ieee_pfc *my_pfc = adapter->ixgbe_ieee_pfc;
 int i;

 pfc->pfc_cap = adapter->dcb_cfg.num_tcs.pfc_tcs;


 if (!my_pfc)
  return 0;

 pfc->pfc_en = my_pfc->pfc_en;
 pfc->mbc = my_pfc->mbc;
 pfc->delay = my_pfc->delay;

 for (i = 0; i < MAX_TRAFFIC_CLASS; i++) {
  pfc->requests[i] = adapter->stats.pxoffrxc[i];
  pfc->indications[i] = adapter->stats.pxofftxc[i];
 }

 return 0;
}

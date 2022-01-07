
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct htc_target {TYPE_2__* drv_priv; } ;
struct TYPE_5__ {int hw; TYPE_1__* ah; } ;
struct TYPE_4__ {int ah_flags; } ;


 int AH_UNPLUGGED ;
 int ath9k_deinit_device (TYPE_2__*) ;
 int ath9k_deinit_wmi (TYPE_2__*) ;
 int ieee80211_free_hw (int ) ;

void ath9k_htc_disconnect_device(struct htc_target *htc_handle, bool hotunplug)
{
 if (htc_handle->drv_priv) {


  if (hotunplug)
   htc_handle->drv_priv->ah->ah_flags |= AH_UNPLUGGED;

  ath9k_deinit_device(htc_handle->drv_priv);
  ath9k_deinit_wmi(htc_handle->drv_priv);
  ieee80211_free_hw(htc_handle->drv_priv->hw);
 }
}

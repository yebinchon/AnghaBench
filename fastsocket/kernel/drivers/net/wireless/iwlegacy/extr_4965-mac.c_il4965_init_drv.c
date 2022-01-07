
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int reset_duration; } ;
struct TYPE_4__ {int smps; } ;
struct il_priv {int * ieee_rates; TYPE_3__* ops; TYPE_2__ force_reset; int missed_beacon_threshold; TYPE_1__ current_ht_config; int iw_mode; int band; int * ieee_channels; int mutex; int free_frames; int hcmd_lock; int sta_lock; } ;
struct TYPE_6__ {int (* set_rxon_chain ) (struct il_priv*) ;} ;


 int IEEE80211_BAND_2GHZ ;
 int IEEE80211_SMPS_STATIC ;
 int IL_DELAY_NEXT_FORCE_FW_RELOAD ;
 int IL_ERR (char*,int) ;
 int IL_MISSED_BEACON_THRESHOLD_DEF ;
 int INIT_LIST_HEAD (int *) ;
 int NL80211_IFTYPE_STATION ;
 int il4965_init_hw_rates (struct il_priv*,int *) ;
 int il_free_channel_map (struct il_priv*) ;
 int il_init_channel_map (struct il_priv*) ;
 int il_init_geos (struct il_priv*) ;
 int il_init_scan_params (struct il_priv*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct il_priv*) ;

__attribute__((used)) static int
il4965_init_drv(struct il_priv *il)
{
 int ret;

 spin_lock_init(&il->sta_lock);
 spin_lock_init(&il->hcmd_lock);

 INIT_LIST_HEAD(&il->free_frames);

 mutex_init(&il->mutex);

 il->ieee_channels = ((void*)0);
 il->ieee_rates = ((void*)0);
 il->band = IEEE80211_BAND_2GHZ;

 il->iw_mode = NL80211_IFTYPE_STATION;
 il->current_ht_config.smps = IEEE80211_SMPS_STATIC;
 il->missed_beacon_threshold = IL_MISSED_BEACON_THRESHOLD_DEF;


 il->force_reset.reset_duration = IL_DELAY_NEXT_FORCE_FW_RELOAD;


 if (il->ops->set_rxon_chain)
  il->ops->set_rxon_chain(il);

 il_init_scan_params(il);

 ret = il_init_channel_map(il);
 if (ret) {
  IL_ERR("initializing regulatory failed: %d\n", ret);
  goto err;
 }

 ret = il_init_geos(il);
 if (ret) {
  IL_ERR("initializing geos failed: %d\n", ret);
  goto err_free_channel_map;
 }
 il4965_init_hw_rates(il, il->ieee_rates);

 return 0;

err_free_channel_map:
 il_free_channel_map(il);
err:
 return ret;
}

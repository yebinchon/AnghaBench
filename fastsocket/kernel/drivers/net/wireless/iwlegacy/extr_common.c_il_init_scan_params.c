
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int valid_tx_ant; } ;
struct il_priv {void** scan_tx_ant; TYPE_1__ hw_params; } ;


 size_t IEEE80211_BAND_2GHZ ;
 size_t IEEE80211_BAND_5GHZ ;
 void* fls (int ) ;

void
il_init_scan_params(struct il_priv *il)
{
 u8 ant_idx = fls(il->hw_params.valid_tx_ant) - 1;
 if (!il->scan_tx_ant[IEEE80211_BAND_5GHZ])
  il->scan_tx_ant[IEEE80211_BAND_5GHZ] = ant_idx;
 if (!il->scan_tx_ant[IEEE80211_BAND_2GHZ])
  il->scan_tx_ant[IEEE80211_BAND_2GHZ] = ant_idx;
}

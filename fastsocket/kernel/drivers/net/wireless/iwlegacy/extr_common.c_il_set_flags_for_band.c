
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct il_priv {TYPE_2__ staging; } ;
struct TYPE_3__ {scalar_t__ use_short_slot; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 int IEEE80211_BAND_5GHZ ;
 int RXON_FLG_AUTO_DETECT_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int RXON_FLG_CCK_MSK ;
 int RXON_FLG_SHORT_SLOT_MSK ;

void
il_set_flags_for_band(struct il_priv *il, enum ieee80211_band band,
        struct ieee80211_vif *vif)
{
 if (band == IEEE80211_BAND_5GHZ) {
  il->staging.flags &=
      ~(RXON_FLG_BAND_24G_MSK | RXON_FLG_AUTO_DETECT_MSK |
        RXON_FLG_CCK_MSK);
  il->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
 } else {

  if (vif && vif->bss_conf.use_short_slot)
   il->staging.flags |= RXON_FLG_SHORT_SLOT_MSK;
  else
   il->staging.flags &= ~RXON_FLG_SHORT_SLOT_MSK;

  il->staging.flags |= RXON_FLG_BAND_24G_MSK;
  il->staging.flags |= RXON_FLG_AUTO_DETECT_MSK;
  il->staging.flags &= ~RXON_FLG_CCK_MSK;
 }
}

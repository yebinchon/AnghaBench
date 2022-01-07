
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_40mhz; int extension_chan_offset; } ;
struct iwl_rxon_context {TYPE_1__ ht; } ;
struct ieee80211_conf {int dummy; } ;


 int IEEE80211_HT_PARAM_CHA_SEC_ABOVE ;
 int IEEE80211_HT_PARAM_CHA_SEC_BELOW ;
 int IEEE80211_HT_PARAM_CHA_SEC_NONE ;
 scalar_t__ conf_is_ht40_minus (struct ieee80211_conf*) ;
 scalar_t__ conf_is_ht40_plus (struct ieee80211_conf*) ;

void iwlagn_config_ht40(struct ieee80211_conf *conf,
   struct iwl_rxon_context *ctx)
{
 if (conf_is_ht40_minus(conf)) {
  ctx->ht.extension_chan_offset =
   IEEE80211_HT_PARAM_CHA_SEC_BELOW;
  ctx->ht.is_40mhz = 1;
 } else if (conf_is_ht40_plus(conf)) {
  ctx->ht.extension_chan_offset =
   IEEE80211_HT_PARAM_CHA_SEC_ABOVE;
  ctx->ht.is_40mhz = 1;
 } else {
  ctx->ht.extension_chan_offset =
   IEEE80211_HT_PARAM_CHA_SEC_NONE;
  ctx->ht.is_40mhz = 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_mvm {int last_bt_notif; } ;
struct ieee80211_vif {int chanctx_conf; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct ieee80211_chanctx_conf {TYPE_2__ def; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_3__ {int band; } ;


 int IEEE80211_BAND_2GHZ ;
 int iwl_mvm_bt_coex_notif_handle (struct iwl_mvm*) ;
 int memset (int *,int ,int) ;
 struct ieee80211_chanctx_conf* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void iwl_mvm_bt_coex_vif_assoc(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
 struct ieee80211_chanctx_conf *chanctx_conf;
 enum ieee80211_band band;

 rcu_read_lock();
 chanctx_conf = rcu_dereference(vif->chanctx_conf);
 if (chanctx_conf && chanctx_conf->def.chan)
  band = chanctx_conf->def.chan->band;
 else
  band = -1;
 rcu_read_unlock();


 if (band == IEEE80211_BAND_2GHZ)
  return;


 memset(&mvm->last_bt_notif, 0, sizeof(mvm->last_bt_notif));

 iwl_mvm_bt_coex_notif_handle(mvm);
}

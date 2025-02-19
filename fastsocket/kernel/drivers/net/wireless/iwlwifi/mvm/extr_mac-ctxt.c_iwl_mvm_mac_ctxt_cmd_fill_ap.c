
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_mvm_vif {int ap_beacon_time; int id; } ;
struct iwl_mvm {int trans; } ;
struct iwl_mac_data_ap {void* beacon_template; scalar_t__ beacon_tsf; void* beacon_time; void* mcast_qid; void* dtim_reciprocal; void* dtim_interval; void* bi_reciprocal; void* bi; } ;
struct TYPE_2__ {int beacon_int; int dtim_period; } ;
struct ieee80211_vif {int cab_queue; TYPE_1__ bss_conf; } ;


 int DEVICE_SYSTEM_TIME_REG ;
 void* cpu_to_le32 (int) ;
 int iwl_mvm_reciprocal (int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;
 int iwl_read_prph (int ,int ) ;

__attribute__((used)) static void iwl_mvm_mac_ctxt_cmd_fill_ap(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif,
      struct iwl_mac_data_ap *ctxt_ap,
      bool add)
{
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);

 ctxt_ap->bi = cpu_to_le32(vif->bss_conf.beacon_int);
 ctxt_ap->bi_reciprocal =
  cpu_to_le32(iwl_mvm_reciprocal(vif->bss_conf.beacon_int));
 ctxt_ap->dtim_interval = cpu_to_le32(vif->bss_conf.beacon_int *
          vif->bss_conf.dtim_period);
 ctxt_ap->dtim_reciprocal =
  cpu_to_le32(iwl_mvm_reciprocal(vif->bss_conf.beacon_int *
            vif->bss_conf.dtim_period));

 ctxt_ap->mcast_qid = cpu_to_le32(vif->cab_queue);






 if (add)
  mvmvif->ap_beacon_time =
   iwl_read_prph(mvm->trans, DEVICE_SYSTEM_TIME_REG);

 ctxt_ap->beacon_time = cpu_to_le32(mvmvif->ap_beacon_time);

 ctxt_ap->beacon_tsf = 0;


 ctxt_ap->beacon_template = cpu_to_le32(mvmvif->id);
}

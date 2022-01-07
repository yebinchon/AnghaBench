
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct iwl_mvm {TYPE_2__* hw; } ;
struct iwl_mac_data_sta {void* assoc_id; void* listen_interval; void* dtim_reciprocal; void* dtim_interval; void* bi_reciprocal; void* bi; void* is_assoc; void* dtim_time; int dtim_tsf; } ;
struct TYPE_6__ {int dtim_period; int sync_dtim_count; int beacon_int; int sync_device_ts; int aid; scalar_t__ sync_tsf; scalar_t__ assoc; } ;
struct ieee80211_vif {TYPE_3__ bss_conf; } ;
struct TYPE_4__ {int listen_interval; } ;
struct TYPE_5__ {TYPE_1__ conf; } ;


 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,int ,int ,int) ;
 void* cpu_to_le32 (int) ;
 int cpu_to_le64 (scalar_t__) ;
 int iwl_mvm_reciprocal (int) ;
 int le32_to_cpu (void*) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_mac_ctxt_cmd_fill_sta(struct iwl_mvm *mvm,
       struct ieee80211_vif *vif,
       struct iwl_mac_data_sta *ctxt_sta,
       bool force_assoc_off)
{

 if (vif->bss_conf.assoc && vif->bss_conf.dtim_period &&
     !force_assoc_off) {
  u32 dtim_offs;
  dtim_offs = vif->bss_conf.sync_dtim_count *
    vif->bss_conf.beacon_int;

  dtim_offs *= 1024;

  ctxt_sta->dtim_tsf =
   cpu_to_le64(vif->bss_conf.sync_tsf + dtim_offs);
  ctxt_sta->dtim_time =
   cpu_to_le32(vif->bss_conf.sync_device_ts + dtim_offs);

  IWL_DEBUG_INFO(mvm, "DTIM TBTT is 0x%llx/0x%x, offset %d\n",
          le64_to_cpu(ctxt_sta->dtim_tsf),
          le32_to_cpu(ctxt_sta->dtim_time),
          dtim_offs);

  ctxt_sta->is_assoc = cpu_to_le32(1);
 } else {
  ctxt_sta->is_assoc = cpu_to_le32(0);
 }

 ctxt_sta->bi = cpu_to_le32(vif->bss_conf.beacon_int);
 ctxt_sta->bi_reciprocal =
  cpu_to_le32(iwl_mvm_reciprocal(vif->bss_conf.beacon_int));
 ctxt_sta->dtim_interval = cpu_to_le32(vif->bss_conf.beacon_int *
           vif->bss_conf.dtim_period);
 ctxt_sta->dtim_reciprocal =
  cpu_to_le32(iwl_mvm_reciprocal(vif->bss_conf.beacon_int *
            vif->bss_conf.dtim_period));

 ctxt_sta->listen_interval = cpu_to_le32(mvm->hw->conf.listen_interval);
 ctxt_sta->assoc_id = cpu_to_le32(vif->bss_conf.aid);
}

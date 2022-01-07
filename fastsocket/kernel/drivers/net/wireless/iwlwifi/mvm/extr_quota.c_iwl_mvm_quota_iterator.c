
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct iwl_mvm_vif {int monitor_active; int ap_active; TYPE_1__* phy_ctxt; } ;
struct iwl_mvm_quota_iterator_data {scalar_t__* colors; int * n_interfaces; struct ieee80211_vif* new_vif; } ;
struct TYPE_4__ {int ibss_joined; int assoc; } ;
struct ieee80211_vif {int type; TYPE_2__ bss_conf; } ;
struct TYPE_3__ {scalar_t__ id; scalar_t__ color; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ MAX_BINDINGS ;





 scalar_t__ NUM_PHY_CTX ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct iwl_mvm_vif* iwl_mvm_vif_from_mac80211 (struct ieee80211_vif*) ;

__attribute__((used)) static void iwl_mvm_quota_iterator(void *_data, u8 *mac,
       struct ieee80211_vif *vif)
{
 struct iwl_mvm_quota_iterator_data *data = _data;
 struct iwl_mvm_vif *mvmvif = iwl_mvm_vif_from_mac80211(vif);
 u16 id;







 if (vif == data->new_vif)
  return;

 if (!mvmvif->phy_ctxt)
  return;


 id = mvmvif->phy_ctxt->id;


 BUILD_BUG_ON(NUM_PHY_CTX > MAX_BINDINGS);

 if (WARN_ON_ONCE(id >= MAX_BINDINGS))
  return;

 if (data->colors[id] < 0)
  data->colors[id] = mvmvif->phy_ctxt->color;
 else
  WARN_ON_ONCE(data->colors[id] != mvmvif->phy_ctxt->color);

 switch (vif->type) {
 case 128:
  if (vif->bss_conf.assoc)
   data->n_interfaces[id]++;
  break;
 case 131:
  if (mvmvif->ap_active)
   data->n_interfaces[id]++;
  break;
 case 130:
  if (mvmvif->monitor_active)
   data->n_interfaces[id]++;
  break;
 case 129:
  break;
 case 132:
  if (vif->bss_conf.ibss_joined)
   data->n_interfaces[id]++;
  break;
 default:
  WARN_ON_ONCE(1);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int beacon_int; scalar_t__ assoc; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
typedef int __le32 ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline __le32 iwl_mvm_scan_suspend_time(struct ieee80211_vif *vif)
{
 if (vif->bss_conf.assoc)
  return cpu_to_le32(vif->bss_conf.beacon_int);
 else
  return 0;
}

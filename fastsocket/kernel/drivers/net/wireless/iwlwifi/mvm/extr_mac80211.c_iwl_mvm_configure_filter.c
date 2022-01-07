
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ieee80211_hw {int dummy; } ;



__attribute__((used)) static void iwl_mvm_configure_filter(struct ieee80211_hw *hw,
         unsigned int changed_flags,
         unsigned int *total_flags,
         u64 multicast)
{
 *total_flags = 0;
}

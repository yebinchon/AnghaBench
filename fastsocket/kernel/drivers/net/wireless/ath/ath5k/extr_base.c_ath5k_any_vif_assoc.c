
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath5k_vif_iter_data {int any_assoc; int need_set_hw_addr; int found_active; int * hw_macaddr; } ;
struct ath5k_hw {int hw; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ath5k_vif_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath5k_vif_iter_data*) ;

bool
ath5k_any_vif_assoc(struct ath5k_hw *ah)
{
 struct ath5k_vif_iter_data iter_data;
 iter_data.hw_macaddr = ((void*)0);
 iter_data.any_assoc = 0;
 iter_data.need_set_hw_addr = 0;
 iter_data.found_active = 1;

 ieee80211_iterate_active_interfaces_atomic(
  ah->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  ath5k_vif_iter, &iter_data);
 return iter_data.any_assoc;
}

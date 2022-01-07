
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath5k_vif_iter_data {int* hw_macaddr; int* mask; int found_active; int need_set_hw_addr; int any_assoc; scalar_t__ opmode; int n_stas; int active_mac; } ;
struct ath5k_vif {scalar_t__ opmode; scalar_t__ assoc; } ;


 int ETH_ALEN ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 scalar_t__ ether_addr_equal (int*,int*) ;
 int memcpy (int ,int*,int) ;

void ath5k_vif_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 struct ath5k_vif_iter_data *iter_data = data;
 int i;
 struct ath5k_vif *avf = (void *)vif->drv_priv;

 if (iter_data->hw_macaddr)
  for (i = 0; i < ETH_ALEN; i++)
   iter_data->mask[i] &=
    ~(iter_data->hw_macaddr[i] ^ mac[i]);

 if (!iter_data->found_active) {
  iter_data->found_active = 1;
  memcpy(iter_data->active_mac, mac, ETH_ALEN);
 }

 if (iter_data->need_set_hw_addr && iter_data->hw_macaddr)
  if (ether_addr_equal(iter_data->hw_macaddr, mac))
   iter_data->need_set_hw_addr = 0;

 if (!iter_data->any_assoc) {
  if (avf->assoc)
   iter_data->any_assoc = 1;
 }






 if (avf->opmode == NL80211_IFTYPE_AP)
  iter_data->opmode = NL80211_IFTYPE_AP;
 else {
  if (avf->opmode == NL80211_IFTYPE_STATION)
   iter_data->n_stas++;
  if (iter_data->opmode == NL80211_IFTYPE_UNSPECIFIED)
   iter_data->opmode = avf->opmode;
 }
}

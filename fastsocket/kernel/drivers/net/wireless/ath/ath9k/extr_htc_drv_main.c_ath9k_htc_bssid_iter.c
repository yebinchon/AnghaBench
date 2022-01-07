
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int dummy; } ;
struct ath9k_vif_iter_data {int* mask; int* hw_macaddr; } ;


 int ETH_ALEN ;

__attribute__((used)) static void ath9k_htc_bssid_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 struct ath9k_vif_iter_data *iter_data = data;
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  iter_data->mask[i] &= ~(iter_data->hw_macaddr[i] ^ mac[i]);
}

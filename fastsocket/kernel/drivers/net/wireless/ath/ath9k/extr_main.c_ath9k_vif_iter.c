
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_vif {int type; } ;
struct ath9k_vif_iter_data {int has_hw_macaddr; int* mask; int* hw_macaddr; int nwds; int nmeshes; int nadhocs; int nstations; int naps; } ;


 int ETH_ALEN ;





 int memcpy (int*,int*,int) ;

__attribute__((used)) static void ath9k_vif_iter(void *data, u8 *mac, struct ieee80211_vif *vif)
{
 struct ath9k_vif_iter_data *iter_data = data;
 int i;

 if (iter_data->has_hw_macaddr) {
  for (i = 0; i < ETH_ALEN; i++)
   iter_data->mask[i] &=
    ~(iter_data->hw_macaddr[i] ^ mac[i]);
 } else {
  memcpy(iter_data->hw_macaddr, mac, ETH_ALEN);
  iter_data->has_hw_macaddr = 1;
 }

 switch (vif->type) {
 case 131:
  iter_data->naps++;
  break;
 case 129:
  iter_data->nstations++;
  break;
 case 132:
  iter_data->nadhocs++;
  break;
 case 130:
  iter_data->nmeshes++;
  break;
 case 128:
  iter_data->nwds++;
  break;
 default:
  break;
 }
}

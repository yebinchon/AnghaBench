
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_vif {scalar_t__ opmode; TYPE_1__* bbuf; } ;
struct ath5k_hw {int lock; int num_mesh_vifs; int num_adhoc_vifs; int num_ap_vifs; struct ieee80211_vif** bslot; int bcbuf; int nvifs; } ;
struct TYPE_2__ {int list; } ;


 unsigned int ATH_BCBUF ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int ath5k_txbuf_free_skb (struct ath5k_hw*,TYPE_1__*) ;
 int ath5k_update_bssid_mask_and_opmode (struct ath5k_hw*,int *) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
ath5k_remove_interface(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct ath5k_hw *ah = hw->priv;
 struct ath5k_vif *avf = (void *)vif->drv_priv;
 unsigned int i;

 mutex_lock(&ah->lock);
 ah->nvifs--;

 if (avf->bbuf) {
  ath5k_txbuf_free_skb(ah, avf->bbuf);
  list_add_tail(&avf->bbuf->list, &ah->bcbuf);
  for (i = 0; i < ATH_BCBUF; i++) {
   if (ah->bslot[i] == vif) {
    ah->bslot[i] = ((void*)0);
    break;
   }
  }
  avf->bbuf = ((void*)0);
 }
 if (avf->opmode == NL80211_IFTYPE_AP)
  ah->num_ap_vifs--;
 else if (avf->opmode == NL80211_IFTYPE_ADHOC)
  ah->num_adhoc_vifs--;
 else if (avf->opmode == NL80211_IFTYPE_MESH_POINT)
  ah->num_mesh_vifs--;

 ath5k_update_bssid_mask_and_opmode(ah, ((void*)0));
 mutex_unlock(&ah->lock);
}

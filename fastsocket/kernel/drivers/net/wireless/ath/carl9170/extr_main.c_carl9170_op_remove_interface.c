
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_vif_info {int active; unsigned int id; int enable_beacon; int * beacon; int list; } ;
struct TYPE_4__ {int off_override; } ;
struct ar9170 {int vifs; int mutex; TYPE_2__ ps; int vif_bitmap; int beacon_lock; TYPE_1__* vif_priv; } ;
struct TYPE_3__ {int vif; } ;


 int PS_OFF_VIF ;
 int RCU_INIT_POINTER (int ,int *) ;
 int WARN_ON (int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int bitmap_release_region (int *,unsigned int,int ) ;
 int carl9170_flush_cab (struct ar9170*,unsigned int) ;
 struct ieee80211_vif* carl9170_get_main_vif (struct ar9170*) ;
 int carl9170_init_interface (struct ar9170*,struct ieee80211_vif*) ;
 int carl9170_mod_virtual_mac (struct ar9170*,unsigned int,int *) ;
 int carl9170_set_beacon_timers (struct ar9170*) ;
 int carl9170_set_operating_mode (struct ar9170*) ;
 int carl9170_update_beacon (struct ar9170*,int) ;
 int dev_kfree_skb_any (int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static void carl9170_op_remove_interface(struct ieee80211_hw *hw,
      struct ieee80211_vif *vif)
{
 struct carl9170_vif_info *vif_priv = (void *) vif->drv_priv;
 struct ieee80211_vif *main_vif;
 struct ar9170 *ar = hw->priv;
 unsigned int id;

 mutex_lock(&ar->mutex);

 if (WARN_ON_ONCE(!vif_priv->active))
  goto unlock;

 ar->vifs--;

 rcu_read_lock();
 main_vif = carl9170_get_main_vif(ar);

 id = vif_priv->id;

 vif_priv->active = 0;
 WARN_ON(vif_priv->enable_beacon);
 vif_priv->enable_beacon = 0;
 list_del_rcu(&vif_priv->list);
 RCU_INIT_POINTER(ar->vif_priv[id].vif, ((void*)0));

 if (vif == main_vif) {
  rcu_read_unlock();

  if (ar->vifs) {
   WARN_ON(carl9170_init_interface(ar,
     carl9170_get_main_vif(ar)));
  } else {
   carl9170_set_operating_mode(ar);
  }
 } else {
  rcu_read_unlock();

  WARN_ON(carl9170_mod_virtual_mac(ar, id, ((void*)0)));
 }

 carl9170_update_beacon(ar, 0);
 carl9170_flush_cab(ar, id);

 spin_lock_bh(&ar->beacon_lock);
 dev_kfree_skb_any(vif_priv->beacon);
 vif_priv->beacon = ((void*)0);
 spin_unlock_bh(&ar->beacon_lock);

 bitmap_release_region(&ar->vif_bitmap, id, 0);

 carl9170_set_beacon_timers(ar);

 if (ar->vifs == 1)
  ar->ps.off_override &= ~PS_OFF_VIF;

unlock:
 mutex_unlock(&ar->mutex);

 synchronize_rcu();
}

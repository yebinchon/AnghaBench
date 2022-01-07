
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee80211_vif {int active; int id; int enable_beacon; int type; int list; int addr; scalar_t__ drv_priv; int p2p; int * beacon; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_vif_info {int active; int id; int enable_beacon; int type; int list; int addr; scalar_t__ drv_priv; int p2p; int * beacon; } ;
struct TYPE_6__ {int off_override; } ;
struct TYPE_4__ {scalar_t__ tx_seq_table; int vif_num; } ;
struct ar9170 {int vifs; int mutex; TYPE_3__ ps; TYPE_2__* vif_priv; int vif_bitmap; TYPE_1__ fw; int beacon_iter; int vif_list; int beacon_lock; } ;
struct TYPE_5__ {int id; int vif; } ;


 int BUG_ON (int) ;
 int EBUSY ;
 int ENOSPC ;



 int const NL80211_IFTYPE_WDS ;
 int PS_OFF_VIF ;
 int RCU_INIT_POINTER (int ,int *) ;
 int bitmap_find_free_region (int *,int ,int ) ;
 int bitmap_release_region (int *,int,int ) ;
 struct ieee80211_vif* carl9170_get_main_vif (struct ar9170*) ;
 int carl9170_init_interface (struct ar9170*,struct ieee80211_vif*) ;
 int carl9170_mod_virtual_mac (struct ar9170*,int,int ) ;
 int carl9170_write_reg (struct ar9170*,scalar_t__,int ) ;
 int dev_kfree_skb_any (int *) ;
 int list_add_rcu (int *,int *) ;
 int list_add_tail_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rcu_assign_pointer (int ,struct ieee80211_vif*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int synchronize_rcu () ;

__attribute__((used)) static int carl9170_op_add_interface(struct ieee80211_hw *hw,
         struct ieee80211_vif *vif)
{
 struct carl9170_vif_info *vif_priv = (void *) vif->drv_priv;
 struct ieee80211_vif *main_vif, *old_main = ((void*)0);
 struct ar9170 *ar = hw->priv;
 int vif_id = -1, err = 0;

 mutex_lock(&ar->mutex);
 rcu_read_lock();
 if (vif_priv->active) {




  vif_id = vif_priv->id;
  vif_priv->enable_beacon = 0;

  spin_lock_bh(&ar->beacon_lock);
  dev_kfree_skb_any(vif_priv->beacon);
  vif_priv->beacon = ((void*)0);
  spin_unlock_bh(&ar->beacon_lock);

  goto init;
 }
 main_vif = carl9170_get_main_vif(ar);

 if (main_vif) {
  switch (main_vif->type) {
  case 128:
   if (vif->type == 128)
    break;







   if (main_vif->p2p && vif->p2p &&
       vif->type == 130) {
    old_main = main_vif;
    break;
   }

   err = -EBUSY;
   rcu_read_unlock();

   goto unlock;

  case 129:
  case 130:
   if ((vif->type == 128) ||
       (vif->type == NL80211_IFTYPE_WDS) ||
       (vif->type == 130) ||
       (vif->type == 129))
    break;

   err = -EBUSY;
   rcu_read_unlock();
   goto unlock;

  default:
   rcu_read_unlock();
   goto unlock;
  }
 }

 vif_id = bitmap_find_free_region(&ar->vif_bitmap, ar->fw.vif_num, 0);

 if (vif_id < 0) {
  rcu_read_unlock();

  err = -ENOSPC;
  goto unlock;
 }

 BUG_ON(ar->vif_priv[vif_id].id != vif_id);

 vif_priv->active = 1;
 vif_priv->id = vif_id;
 vif_priv->enable_beacon = 0;
 ar->vifs++;
 if (old_main) {




  list_add_rcu(&vif_priv->list, &ar->vif_list);
 } else {



  list_add_tail_rcu(&vif_priv->list, &ar->vif_list);
 }
 rcu_assign_pointer(ar->vif_priv[vif_id].vif, vif);

init:
 main_vif = carl9170_get_main_vif(ar);

 if (main_vif == vif) {
  rcu_assign_pointer(ar->beacon_iter, vif_priv);
  rcu_read_unlock();

  if (old_main) {
   struct carl9170_vif_info *old_main_priv =
    (void *) old_main->drv_priv;





   err = carl9170_mod_virtual_mac(ar, old_main_priv->id,
             old_main->addr);
   if (err)
    goto unlock;
  }

  err = carl9170_init_interface(ar, vif);
  if (err)
   goto unlock;
 } else {
  rcu_read_unlock();
  err = carl9170_mod_virtual_mac(ar, vif_id, vif->addr);

  if (err)
   goto unlock;
 }

 if (ar->fw.tx_seq_table) {
  err = carl9170_write_reg(ar, ar->fw.tx_seq_table + vif_id * 4,
      0);
  if (err)
   goto unlock;
 }

unlock:
 if (err && (vif_id >= 0)) {
  vif_priv->active = 0;
  bitmap_release_region(&ar->vif_bitmap, vif_id, 0);
  ar->vifs--;
  RCU_INIT_POINTER(ar->vif_priv[vif_id].vif, ((void*)0));
  list_del_rcu(&vif_priv->list);
  mutex_unlock(&ar->mutex);
  synchronize_rcu();
 } else {
  if (ar->vifs > 1)
   ar->ps.off_override |= PS_OFF_VIF;

  mutex_unlock(&ar->mutex);
 }

 return err;
}

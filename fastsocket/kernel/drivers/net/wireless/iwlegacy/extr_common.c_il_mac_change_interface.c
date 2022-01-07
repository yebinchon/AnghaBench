
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int iw_mode; int mutex; int vif; } ;
struct ieee80211_vif {int type; int p2p; int addr; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;


 int D_MAC80211 (char*,int,...) ;
 int EBUSY ;
 int EOPNOTSUPP ;
 int il_is_ready_rf (struct il_priv*) ;
 int il_teardown_interface (struct il_priv*,struct ieee80211_vif*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
il_mac_change_interface(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
   enum nl80211_iftype newtype, bool newp2p)
{
 struct il_priv *il = hw->priv;
 int err;

 mutex_lock(&il->mutex);
 D_MAC80211("enter: type %d, addr %pM newtype %d newp2p %d\n",
      vif->type, vif->addr, newtype, newp2p);

 if (newp2p) {
  err = -EOPNOTSUPP;
  goto out;
 }

 if (!il->vif || !il_is_ready_rf(il)) {




  err = -EBUSY;
  goto out;
 }


 vif->type = newtype;
 vif->p2p = 0;
 il->iw_mode = newtype;
 il_teardown_interface(il, vif);
 err = 0;

out:
 D_MAC80211("leave err %d\n", err);
 mutex_unlock(&il->mutex);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_vif {scalar_t__ drv_priv; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_vif {size_t bslot; } ;
struct TYPE_2__ {int ** bslot; } ;
struct ath9k_htc_priv {int beacon_lock; TYPE_1__ cur_beacon_conf; int ah; } ;


 int CONFIG ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath9k_htc_remove_bslot(struct ath9k_htc_priv *priv,
       struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *)vif->drv_priv;

 spin_lock_bh(&priv->beacon_lock);
 priv->cur_beacon_conf.bslot[avp->bslot] = ((void*)0);
 spin_unlock_bh(&priv->beacon_lock);

 ath_dbg(common, CONFIG, "Removed interface at beacon slot: %d\n",
  avp->bslot);
}

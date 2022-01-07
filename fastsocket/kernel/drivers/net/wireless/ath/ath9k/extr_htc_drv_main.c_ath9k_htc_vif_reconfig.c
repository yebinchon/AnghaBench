
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath9k_htc_priv {int rearm_ani; int reconfig_beacon; int hw; } ;


 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ath9k_htc_beacon_reconfig (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_restore (struct ath9k_htc_priv*) ;
 int ath9k_htc_ps_wakeup (struct ath9k_htc_priv*) ;
 int ath9k_htc_start_ani (struct ath9k_htc_priv*) ;
 int ath9k_htc_vif_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath9k_htc_priv*) ;

__attribute__((used)) static void ath9k_htc_vif_reconfig(struct ath9k_htc_priv *priv)
{
 priv->rearm_ani = 0;
 priv->reconfig_beacon = 0;

 ieee80211_iterate_active_interfaces_atomic(
  priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  ath9k_htc_vif_iter, priv);
 if (priv->rearm_ani)
  ath9k_htc_start_ani(priv);

 if (priv->reconfig_beacon) {
  ath9k_htc_ps_wakeup(priv);
  ath9k_htc_beacon_reconfig(priv);
  ath9k_htc_ps_restore(priv);
 }
}

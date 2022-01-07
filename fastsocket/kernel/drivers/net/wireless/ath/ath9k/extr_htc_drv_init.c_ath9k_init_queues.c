
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int dummy; } ;
struct ath9k_htc_priv {int* hwq_map; int beaconq; int cabq; int ah; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int IEEE80211_AC_BE ;
 int IEEE80211_AC_BK ;
 int IEEE80211_AC_VI ;
 int IEEE80211_AC_VO ;
 int ath9k_htc_cabq_setup (struct ath9k_htc_priv*) ;
 int ath9k_htc_txq_setup (struct ath9k_htc_priv*,int ) ;
 int ath9k_hw_beaconq_setup (int ) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_err (struct ath_common*,char*) ;

__attribute__((used)) static int ath9k_init_queues(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 int i;

 for (i = 0; i < ARRAY_SIZE(priv->hwq_map); i++)
  priv->hwq_map[i] = -1;

 priv->beaconq = ath9k_hw_beaconq_setup(priv->ah);
 if (priv->beaconq == -1) {
  ath_err(common, "Unable to setup BEACON xmit queue\n");
  goto err;
 }

 priv->cabq = ath9k_htc_cabq_setup(priv);
 if (priv->cabq == -1) {
  ath_err(common, "Unable to setup CAB xmit queue\n");
  goto err;
 }

 if (!ath9k_htc_txq_setup(priv, IEEE80211_AC_BE)) {
  ath_err(common, "Unable to setup xmit queue for BE traffic\n");
  goto err;
 }

 if (!ath9k_htc_txq_setup(priv, IEEE80211_AC_BK)) {
  ath_err(common, "Unable to setup xmit queue for BK traffic\n");
  goto err;
 }
 if (!ath9k_htc_txq_setup(priv, IEEE80211_AC_VI)) {
  ath_err(common, "Unable to setup xmit queue for VI traffic\n");
  goto err;
 }
 if (!ath9k_htc_txq_setup(priv, IEEE80211_AC_VO)) {
  ath_err(common, "Unable to setup xmit queue for VO traffic\n");
  goto err;
 }

 return 0;

err:
 return -EINVAL;
}

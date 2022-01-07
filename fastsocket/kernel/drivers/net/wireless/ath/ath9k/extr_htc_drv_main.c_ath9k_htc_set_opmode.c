
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath9k_htc_priv {TYPE_1__* ah; scalar_t__ num_ap_vif; scalar_t__ num_ibss_vif; } ;
struct TYPE_2__ {int opmode; } ;


 int NL80211_IFTYPE_ADHOC ;
 int NL80211_IFTYPE_AP ;
 int NL80211_IFTYPE_STATION ;
 int ath9k_hw_setopmode (TYPE_1__*) ;

__attribute__((used)) static void ath9k_htc_set_opmode(struct ath9k_htc_priv *priv)
{
 if (priv->num_ibss_vif)
  priv->ah->opmode = NL80211_IFTYPE_ADHOC;
 else if (priv->num_ap_vif)
  priv->ah->opmode = NL80211_IFTYPE_AP;
 else
  priv->ah->opmode = NL80211_IFTYPE_STATION;

 ath9k_hw_setopmode(priv->ah);
}

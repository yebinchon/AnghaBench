
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int dummy; } ;
struct ath_rate_priv {int dummy; } ;


 int kfree (struct ath_rate_priv*) ;

__attribute__((used)) static void ath_rate_free_sta(void *priv, struct ieee80211_sta *sta,
         void *priv_sta)
{
 struct ath_rate_priv *rate_priv = priv_sta;
 kfree(rate_priv);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_common {int bssidmask; } ;
struct ath9k_htc_priv {TYPE_1__* ah; } ;
struct TYPE_2__ {int opmode; } ;


 int ETH_ALEN ;
 int NL80211_IFTYPE_STATION ;
 struct ath_common* ath9k_hw_common (TYPE_1__*) ;
 int ath_bcast_mac ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void ath9k_init_misc(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);

 memcpy(common->bssidmask, ath_bcast_mac, ETH_ALEN);

 priv->ah->opmode = NL80211_IFTYPE_STATION;
}

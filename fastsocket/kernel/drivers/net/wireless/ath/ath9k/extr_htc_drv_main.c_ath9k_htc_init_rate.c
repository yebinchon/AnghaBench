
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_sta {int addr; } ;
struct ath_common {int dummy; } ;
struct ath9k_htc_target_rate {int capflags; } ;
struct ath9k_htc_priv {int ah; } ;


 int CONFIG ;
 int ath9k_htc_send_rate_cmd (struct ath9k_htc_priv*,struct ath9k_htc_target_rate*) ;
 int ath9k_htc_setup_rate (struct ath9k_htc_priv*,struct ieee80211_sta*,struct ath9k_htc_target_rate*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;
 int be32_to_cpu (int ) ;
 int memset (struct ath9k_htc_target_rate*,int ,int) ;

__attribute__((used)) static void ath9k_htc_init_rate(struct ath9k_htc_priv *priv,
    struct ieee80211_sta *sta)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_htc_target_rate trate;
 int ret;

 memset(&trate, 0, sizeof(struct ath9k_htc_target_rate));
 ath9k_htc_setup_rate(priv, sta, &trate);
 ret = ath9k_htc_send_rate_cmd(priv, &trate);
 if (!ret)
  ath_dbg(common, CONFIG,
   "Updated target sta: %pM, rate caps: 0x%X\n",
   sta->addr, be32_to_cpu(trate.capflags));
}

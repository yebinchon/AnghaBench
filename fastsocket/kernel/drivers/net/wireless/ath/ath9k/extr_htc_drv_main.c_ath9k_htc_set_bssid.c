
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int curaid; int curbssid; } ;
struct ath9k_htc_priv {int ah; } ;


 int CONFIG ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath9k_hw_write_associd (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int ,int ) ;

__attribute__((used)) static void ath9k_htc_set_bssid(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);

 ath9k_hw_write_associd(priv->ah);
 ath_dbg(common, CONFIG, "BSSID: %pM aid: 0x%x\n",
  common->curbssid, common->curaid);
}

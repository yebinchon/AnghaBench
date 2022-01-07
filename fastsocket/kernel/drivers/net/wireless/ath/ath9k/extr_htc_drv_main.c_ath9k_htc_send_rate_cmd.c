
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ath_common {int dummy; } ;
struct ath9k_htc_target_rate {int dummy; } ;
struct ath9k_htc_priv {int ah; } ;


 int WMI_CMD_BUF (int ,struct ath9k_htc_target_rate*) ;
 int WMI_RC_RATE_UPDATE_CMDID ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_err (struct ath_common*,char*) ;

__attribute__((used)) static int ath9k_htc_send_rate_cmd(struct ath9k_htc_priv *priv,
        struct ath9k_htc_target_rate *trate)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 int ret;
 u8 cmd_rsp;

 WMI_CMD_BUF(WMI_RC_RATE_UPDATE_CMDID, trate);
 if (ret) {
  ath_err(common,
   "Unable to initialize Rate information on target\n");
 }

 return ret;
}

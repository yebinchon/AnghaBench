
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ath9k_htc_priv {TYPE_2__* ah; } ;
struct ath9k_htc_cap_target {int ampdu_subframes; int tx_chainmask; int enable_coex; int ampdu_limit; } ;
struct TYPE_3__ {int tx_chainmask; } ;
struct TYPE_4__ {TYPE_1__ caps; } ;


 int WMI_CMD_BUF (int ,struct ath9k_htc_cap_target*) ;
 int WMI_TARGET_IC_UPDATE_CMDID ;
 int cpu_to_be32 (int) ;
 int memset (struct ath9k_htc_cap_target*,int ,int) ;

int ath9k_htc_update_cap_target(struct ath9k_htc_priv *priv,
    u8 enable_coex)
{
 struct ath9k_htc_cap_target tcap;
 int ret;
 u8 cmd_rsp;

 memset(&tcap, 0, sizeof(struct ath9k_htc_cap_target));

 tcap.ampdu_limit = cpu_to_be32(0xffff);
 tcap.ampdu_subframes = 0xff;
 tcap.enable_coex = enable_coex;
 tcap.tx_chainmask = priv->ah->caps.tx_chainmask;

 WMI_CMD_BUF(WMI_TARGET_IC_UPDATE_CMDID, &tcap);

 return ret;
}

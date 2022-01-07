
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lbs_private {int dummy; } ;
struct TYPE_2__ {void* size; } ;
struct cmd_ds_802_11_rf_tx_power {void* curlevel; void* action; TYPE_1__ hdr; } ;
typedef int s16 ;
typedef int cmd ;


 int CMD_802_11_RF_TX_POWER ;
 int CMD_ACT_SET ;
 int LBS_DEB_CMD ;
 void* cpu_to_le16 (int) ;
 int lbs_cmd_with_response (struct lbs_private*,int ,struct cmd_ds_802_11_rf_tx_power*) ;
 int lbs_deb_cmd (char*,int) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memset (struct cmd_ds_802_11_rf_tx_power*,int ,int) ;

int lbs_set_tx_power(struct lbs_private *priv, s16 dbm)
{
 struct cmd_ds_802_11_rf_tx_power cmd;
 int ret;

 lbs_deb_enter(LBS_DEB_CMD);

 memset(&cmd, 0, sizeof(cmd));
 cmd.hdr.size = cpu_to_le16(sizeof(cmd));
 cmd.action = cpu_to_le16(CMD_ACT_SET);
 cmd.curlevel = cpu_to_le16(dbm);

 lbs_deb_cmd("SET_RF_TX_POWER: %d dBm\n", dbm);

 ret = lbs_cmd_with_response(priv, CMD_802_11_RF_TX_POWER, &cmd);

 lbs_deb_leave(LBS_DEB_CMD);
 return ret;
}

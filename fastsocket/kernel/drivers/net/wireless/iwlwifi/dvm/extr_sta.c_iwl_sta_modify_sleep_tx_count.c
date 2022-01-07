
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {int dummy; } ;
struct TYPE_2__ {int sta_id; int modify_mask; } ;
struct iwl_addsta_cmd {int sleep_tx_count; TYPE_1__ sta; int station_flags_msk; int station_flags; int mode; } ;


 int CMD_ASYNC ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_FLG_PWR_SAVE_MSK ;
 int STA_MODIFY_SLEEP_TX_COUNT_MSK ;
 int cpu_to_le16 (int) ;
 int iwl_send_add_sta (struct iwl_priv*,struct iwl_addsta_cmd*,int ) ;

void iwl_sta_modify_sleep_tx_count(struct iwl_priv *priv, int sta_id, int cnt)
{
 struct iwl_addsta_cmd cmd = {
  .mode = STA_CONTROL_MODIFY_MSK,
  .station_flags = STA_FLG_PWR_SAVE_MSK,
  .station_flags_msk = STA_FLG_PWR_SAVE_MSK,
  .sta.sta_id = sta_id,
  .sta.modify_mask = STA_MODIFY_SLEEP_TX_COUNT_MSK,
  .sleep_tx_count = cpu_to_le16(cnt),
 };

 iwl_send_add_sta(priv, &cmd, CMD_ASYNC);
}

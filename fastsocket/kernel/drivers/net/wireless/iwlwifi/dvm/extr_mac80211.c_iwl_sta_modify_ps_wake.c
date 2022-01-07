
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {int dummy; } ;
struct TYPE_2__ {int sta_id; } ;
struct iwl_addsta_cmd {TYPE_1__ sta; int station_flags_msk; int mode; } ;


 int CMD_ASYNC ;
 int STA_CONTROL_MODIFY_MSK ;
 int STA_FLG_PWR_SAVE_MSK ;
 int iwl_send_add_sta (struct iwl_priv*,struct iwl_addsta_cmd*,int ) ;

__attribute__((used)) static void iwl_sta_modify_ps_wake(struct iwl_priv *priv, int sta_id)
{
 struct iwl_addsta_cmd cmd = {
  .mode = STA_CONTROL_MODIFY_MSK,
  .station_flags_msk = STA_FLG_PWR_SAVE_MSK,
  .sta.sta_id = sta_id,
 };

 iwl_send_add_sta(priv, &cmd, CMD_ASYNC);
}

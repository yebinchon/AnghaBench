
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {TYPE_2__* cfg; } ;
struct TYPE_4__ {scalar_t__ temp_offset_v2; scalar_t__ need_temp_offset_calib; TYPE_1__* bt_params; } ;
struct TYPE_3__ {scalar_t__ advanced_bt_coexist; } ;


 int BT_COEX_PRIO_TBL_EVT_INIT_CALIB2 ;
 int IWL_BT_COEX_ENV_OPEN ;
 int iwl_send_bt_env (struct iwl_priv*,int ,int ) ;
 int iwl_send_calib_cfg (struct iwl_priv*) ;
 int iwl_set_temperature_offset_calib (struct iwl_priv*) ;
 int iwl_set_temperature_offset_calib_v2 (struct iwl_priv*) ;

int iwl_init_alive_start(struct iwl_priv *priv)
{
 int ret;

 if (priv->cfg->bt_params &&
     priv->cfg->bt_params->advanced_bt_coexist) {






  ret = iwl_send_bt_env(priv, IWL_BT_COEX_ENV_OPEN,
   BT_COEX_PRIO_TBL_EVT_INIT_CALIB2);
  if (ret)
   return ret;

 }

 ret = iwl_send_calib_cfg(priv);
 if (ret)
  return ret;





 if (priv->cfg->need_temp_offset_calib) {
  if (priv->cfg->temp_offset_v2)
   return iwl_set_temperature_offset_calib_v2(priv);
  else
   return iwl_set_temperature_offset_calib(priv);
 }

 return 0;
}

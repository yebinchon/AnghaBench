
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_priv {int notif_wait; } ;
struct iwl_notification_wait {int dummy; } ;


 int ARRAY_SIZE (int const*) ;

 int HZ ;
 int IWL_ERR (struct iwl_priv*,char*,int) ;
 int iwl_init_alive_start (struct iwl_priv*) ;
 int iwl_init_notification_wait (int *,struct iwl_notification_wait*,int const*,int ,int *,int *) ;
 int iwl_remove_notification (int *,struct iwl_notification_wait*) ;
 int iwl_wait_notification (int *,struct iwl_notification_wait*,int) ;

__attribute__((used)) static int iwl_testmode_cfg_init_calib(struct iwl_priv *priv)
{
 struct iwl_notification_wait calib_wait;
 static const u8 calib_complete[] = {
  128
 };
 int ret;

 iwl_init_notification_wait(&priv->notif_wait, &calib_wait,
       calib_complete, ARRAY_SIZE(calib_complete),
       ((void*)0), ((void*)0));
 ret = iwl_init_alive_start(priv);
 if (ret) {
  IWL_ERR(priv, "Fail init calibration: %d\n", ret);
  goto cfg_init_calib_error;
 }

 ret = iwl_wait_notification(&priv->notif_wait, &calib_wait, 2 * HZ);
 if (ret)
  IWL_ERR(priv, "Error detecting"
   " CALIBRATION_COMPLETE_NOTIFICATION: %d\n", ret);
 return ret;

cfg_init_calib_error:
 iwl_remove_notification(&priv->notif_wait, &calib_wait);
 return ret;
}

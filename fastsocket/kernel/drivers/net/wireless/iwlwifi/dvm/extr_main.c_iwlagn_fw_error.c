
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {int ucode_loaded; unsigned long reload_jiffies; scalar_t__ reload_count; int restart; int workqueue; int status; int notif_wait; } ;
struct TYPE_2__ {scalar_t__ restart_fw; } ;


 int IWL_DEBUG_FW_ERRORS (struct iwl_priv*,char*) ;
 int IWL_DL_FW_ERRORS ;
 int IWL_ERR (struct iwl_priv*,char*) ;
 scalar_t__ IWL_MAX_CONTINUE_RELOAD_CNT ;
 unsigned int IWL_MIN_RELOAD_DURATION ;
 int IWL_RXON_CTX_BSS ;
 int STATUS_EXIT_PENDING ;
 int STATUS_FW_ERROR ;
 int STATUS_READY ;
 int clear_bit (int ,int *) ;
 int iwl_abort_notification_waits (int *) ;
 scalar_t__ iwl_have_debug_level (int ) ;
 int iwl_print_rx_config_cmd (struct iwl_priv*,int ) ;
 TYPE_1__ iwlwifi_mod_params ;
 unsigned long jiffies ;
 unsigned int jiffies_to_msecs (long) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iwlagn_fw_error(struct iwl_priv *priv, bool ondemand)
{
 unsigned int reload_msec;
 unsigned long reload_jiffies;







 priv->ucode_loaded = 0;


 set_bit(STATUS_FW_ERROR, &priv->status);

 iwl_abort_notification_waits(&priv->notif_wait);



 clear_bit(STATUS_READY, &priv->status);

 if (!ondemand) {






  reload_jiffies = jiffies;
  reload_msec = jiffies_to_msecs((long) reload_jiffies -
     (long) priv->reload_jiffies);
  priv->reload_jiffies = reload_jiffies;
  if (reload_msec <= IWL_MIN_RELOAD_DURATION) {
   priv->reload_count++;
   if (priv->reload_count >= IWL_MAX_CONTINUE_RELOAD_CNT) {
    IWL_ERR(priv, "BUG_ON, Stop restarting\n");
    return;
   }
  } else
   priv->reload_count = 0;
 }

 if (!test_bit(STATUS_EXIT_PENDING, &priv->status)) {
  if (iwlwifi_mod_params.restart_fw) {
   IWL_DEBUG_FW_ERRORS(priv,
      "Restarting adapter due to uCode error.\n");
   queue_work(priv->workqueue, &priv->restart);
  } else
   IWL_DEBUG_FW_ERRORS(priv,
      "Detected FW error, but not restarting\n");
 }
}

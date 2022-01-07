
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ct_kill_waiting_tm; } ;
struct iwl_priv {TYPE_1__ thermal_throttle; } ;


 int CMD_SYNC ;
 int CT_KILL_WAITING_DURATION ;
 int IWL_DEBUG_TEMP (struct iwl_priv*,char*) ;
 int iwl_send_statistics_request (struct iwl_priv*,int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int ) ;

__attribute__((used)) static void iwl_prepare_ct_kill_task(struct iwl_priv *priv)
{
 IWL_DEBUG_TEMP(priv, "Prepare to enter IWL_TI_CT_KILL\n");

 iwl_send_statistics_request(priv, CMD_SYNC, 0);

 mod_timer(&priv->thermal_throttle.ct_kill_waiting_tm,
   jiffies + msecs_to_jiffies(CT_KILL_WAITING_DURATION));
}

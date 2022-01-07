
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_tt_mgmt {scalar_t__ state; } ;
struct iwl_priv {int status; struct iwl_tt_mgmt thermal_throttle; } ;


 int IWL_DEBUG_TEMP (struct iwl_priv*,char*) ;
 scalar_t__ IWL_TI_CT_KILL ;
 int STATUS_CT_KILL ;
 int STATUS_EXIT_PENDING ;
 int iwl_perform_ct_kill_task (struct iwl_priv*,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void iwl_tt_ready_for_ct_kill(unsigned long data)
{
 struct iwl_priv *priv = (struct iwl_priv *)data;
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;


 if (tt->state != IWL_TI_CT_KILL) {
  IWL_DEBUG_TEMP(priv, "entering CT_KILL state when "
    "temperature timer expired\n");
  tt->state = IWL_TI_CT_KILL;
  set_bit(STATUS_CT_KILL, &priv->status);
  iwl_perform_ct_kill_task(priv, 1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_tt_mgmt {int * transaction; int * restriction; scalar_t__ advanced_tt; int ct_kill_waiting_tm; int ct_kill_exit_tm; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; int ct_exit; int ct_enter; int tt_work; } ;


 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int kfree (int *) ;

void iwl_tt_exit(struct iwl_priv *priv)
{
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;


 del_timer_sync(&priv->thermal_throttle.ct_kill_exit_tm);

 del_timer_sync(&priv->thermal_throttle.ct_kill_waiting_tm);
 cancel_work_sync(&priv->tt_work);
 cancel_work_sync(&priv->ct_enter);
 cancel_work_sync(&priv->ct_exit);

 if (priv->thermal_throttle.advanced_tt) {

  kfree(tt->restriction);
  tt->restriction = ((void*)0);
  kfree(tt->transaction);
  tt->transaction = ((void*)0);
 }
}

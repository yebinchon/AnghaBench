
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_tt_mgmt {scalar_t__ state; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; } ;


 scalar_t__ IWL_TI_1 ;

bool iwl_tt_is_low_power_state(struct iwl_priv *priv)
{
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;

 if (tt->state >= IWL_TI_1)
  return 1;
 return 0;
}

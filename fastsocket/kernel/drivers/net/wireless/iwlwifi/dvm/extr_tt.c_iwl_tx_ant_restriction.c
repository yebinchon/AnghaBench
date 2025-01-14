
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_tt_restriction {int tx_stream; } ;
struct iwl_tt_mgmt {int state; struct iwl_tt_restriction* restriction; int advanced_tt; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; } ;
typedef enum iwl_antenna_ok { ____Placeholder_iwl_antenna_ok } iwl_antenna_ok ;


 int IWL_ANT_OK_MULTI ;

enum iwl_antenna_ok iwl_tx_ant_restriction(struct iwl_priv *priv)
{
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;
 struct iwl_tt_restriction *restriction;

 if (!priv->thermal_throttle.advanced_tt)
  return IWL_ANT_OK_MULTI;
 restriction = tt->restriction + tt->state;
 return restriction->tx_stream;
}

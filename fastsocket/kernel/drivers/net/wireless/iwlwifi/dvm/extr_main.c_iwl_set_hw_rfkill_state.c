
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_priv {TYPE_1__* hw; int status; } ;
struct iwl_op_mode {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;


 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 int STATUS_RF_KILL_HW ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int wiphy_rfkill_set_hw_state (int ,int) ;

__attribute__((used)) static void iwl_set_hw_rfkill_state(struct iwl_op_mode *op_mode, bool state)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);

 if (state)
  set_bit(STATUS_RF_KILL_HW, &priv->status);
 else
  clear_bit(STATUS_RF_KILL_HW, &priv->status);

 wiphy_rfkill_set_hw_state(priv->hw->wiphy, state);
}

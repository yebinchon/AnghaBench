
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {struct ieee80211_hw* hw; } ;
struct iwl_op_mode {int dummy; } ;
struct ieee80211_hw {struct iwl_op_mode* priv; } ;


 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int iwlagn_hw_ops ;

struct ieee80211_hw *iwl_alloc_all(void)
{
 struct iwl_priv *priv;
 struct iwl_op_mode *op_mode;


 struct ieee80211_hw *hw;

 hw = ieee80211_alloc_hw(sizeof(struct iwl_priv) +
    sizeof(struct iwl_op_mode), &iwlagn_hw_ops);
 if (!hw)
  goto out;

 op_mode = hw->priv;
 priv = IWL_OP_MODE_GET_DVM(op_mode);
 priv->hw = hw;

out:
 return hw;
}

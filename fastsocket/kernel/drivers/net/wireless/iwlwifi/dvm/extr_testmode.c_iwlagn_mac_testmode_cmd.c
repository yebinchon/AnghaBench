
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct iwl_priv {int mutex; int tst; } ;
struct ieee80211_hw {int dummy; } ;


 int ENOSYS ;
 int IWL_DEBUG_INFO (struct iwl_priv*,char*) ;
 int IWL_ERR (struct iwl_priv*,char*,...) ;
 struct iwl_priv* IWL_MAC80211_GET_DVM (struct ieee80211_hw*) ;
 size_t IWL_TM_ATTR_COMMAND ;
 int IWL_TM_ATTR_MAX ;
 int iwl_test_handle_cmd (int *,struct nlattr**) ;
 int iwl_test_parse (int *,struct nlattr**,void*,int) ;
 int iwl_testmode_driver (struct ieee80211_hw*,struct nlattr**) ;
 int iwl_testmode_ownership (struct ieee80211_hw*,struct nlattr**) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nla_get_u32 (struct nlattr*) ;

int iwlagn_mac_testmode_cmd(struct ieee80211_hw *hw, void *data, int len)
{
 struct nlattr *tb[IWL_TM_ATTR_MAX];
 struct iwl_priv *priv = IWL_MAC80211_GET_DVM(hw);
 int result;

 result = iwl_test_parse(&priv->tst, tb, data, len);
 if (result)
  return result;


 mutex_lock(&priv->mutex);
 switch (nla_get_u32(tb[IWL_TM_ATTR_COMMAND])) {
 case 128:
 case 145:
 case 144:
 case 143:
 case 147:
 case 142:
 case 135:
 case 130:
 case 136:
 case 139:
 case 134:
  result = iwl_test_handle_cmd(&priv->tst, tb);
  break;

 case 140:
 case 133:
 case 146:
 case 132:
 case 138:
 case 141:
 case 131:
 case 137:
  IWL_DEBUG_INFO(priv, "testmode cmd to driver\n");
  result = iwl_testmode_driver(hw, tb);
  break;

 case 129:
  IWL_DEBUG_INFO(priv, "testmode change uCode ownership\n");
  result = iwl_testmode_ownership(hw, tb);
  break;

 default:
  IWL_ERR(priv, "Unknown testmode command\n");
  result = -ENOSYS;
  break;
 }
 mutex_unlock(&priv->mutex);

 if (result)
  IWL_ERR(priv, "Test cmd failed result=%d\n", result);
 return result;
}

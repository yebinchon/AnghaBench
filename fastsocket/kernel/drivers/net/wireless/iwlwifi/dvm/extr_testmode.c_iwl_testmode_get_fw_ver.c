
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct iwl_priv {TYPE_1__* fw; } ;
struct iwl_op_mode {int dummy; } ;
struct TYPE_2__ {int ucode_ver; } ;


 struct iwl_priv* IWL_OP_MODE_GET_DVM (struct iwl_op_mode*) ;

__attribute__((used)) static u32 iwl_testmode_get_fw_ver(struct iwl_op_mode *op_mode)
{
 struct iwl_priv *priv = IWL_OP_MODE_GET_DVM(op_mode);
 return priv->fw->ucode_ver;
}

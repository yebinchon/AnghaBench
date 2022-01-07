
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_priv {int trans; TYPE_2__* nvm_data; TYPE_1__* cfg; } ;
struct TYPE_4__ {int calib_version; } ;
struct TYPE_3__ {int device_family; } ;


 int CSR_GP_DRIVER_REG ;
 int CSR_GP_DRIVER_REG_BIT_6050_1x2 ;
 int CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6 ;
 int CSR_GP_DRIVER_REG_BIT_RADIO_SKU_2x2_IPA ;






 int WARN_ON (int) ;
 int iwl_set_bit (int ,int ,int ) ;
 int iwl_write32 (int ,int ,int ) ;

__attribute__((used)) static void iwl6000_nic_config(struct iwl_priv *priv)
{
 switch (priv->cfg->device_family) {
 case 131:
 case 130:
 case 133:
  break;
 case 132:

  iwl_write32(priv->trans, CSR_GP_DRIVER_REG,
        CSR_GP_DRIVER_REG_BIT_RADIO_SKU_2x2_IPA);
  break;
 case 129:

  if (priv->nvm_data->calib_version >= 6)
   iwl_set_bit(priv->trans, CSR_GP_DRIVER_REG,
     CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6);
  break;
 case 128:

  if (priv->nvm_data->calib_version >= 6)
   iwl_set_bit(priv->trans, CSR_GP_DRIVER_REG,
     CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6);
  iwl_set_bit(priv->trans, CSR_GP_DRIVER_REG,
       CSR_GP_DRIVER_REG_BIT_6050_1x2);
  break;
 default:
  WARN_ON(1);
 }
}

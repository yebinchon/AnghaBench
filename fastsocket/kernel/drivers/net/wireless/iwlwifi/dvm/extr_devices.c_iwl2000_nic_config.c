
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int trans; } ;


 int CSR_GP_DRIVER_REG ;
 int CSR_GP_DRIVER_REG_BIT_RADIO_IQ_INVER ;
 int iwl_set_bit (int ,int ,int ) ;

__attribute__((used)) static void iwl2000_nic_config(struct iwl_priv *priv)
{
 iwl_set_bit(priv->trans, CSR_GP_DRIVER_REG,
      CSR_GP_DRIVER_REG_BIT_RADIO_IQ_INVER);
}

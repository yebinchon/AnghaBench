
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il_priv {int dummy; } ;


 int APMG_PS_CTRL_MSK_PWR_SRC ;
 int APMG_PS_CTRL_REG ;
 int APMG_PS_CTRL_VAL_PWR_SRC_VMAIN ;
 int CSR_GPIO_IN ;
 int CSR_GPIO_IN_BIT_AUX_POWER ;
 int CSR_GPIO_IN_VAL_VMAIN_PWR_SRC ;
 int _il_poll_bit (struct il_priv*,int ,int ,int ,int) ;
 int il_set_bits_mask_prph (struct il_priv*,int ,int ,int ) ;

__attribute__((used)) static void
il3945_set_pwr_vmain(struct il_priv *il)
{
 il_set_bits_mask_prph(il, APMG_PS_CTRL_REG,
         APMG_PS_CTRL_VAL_PWR_SRC_VMAIN,
         ~APMG_PS_CTRL_MSK_PWR_SRC);

 _il_poll_bit(il, CSR_GPIO_IN, CSR_GPIO_IN_VAL_VMAIN_PWR_SRC,
       CSR_GPIO_IN_BIT_AUX_POWER, 5000);
}

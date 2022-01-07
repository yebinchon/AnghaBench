
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int MDIO_MMD_PHYXS ;
 int TXC_GPIO_OUTPUT ;
 int efx_mdio_set_flag (struct efx_nic*,int ,int ,int,int) ;

void falcon_txc_set_gpio_val(struct efx_nic *efx, int pin, int on)
{
 efx_mdio_set_flag(efx, MDIO_MMD_PHYXS, TXC_GPIO_OUTPUT, 1 << pin, on);
}

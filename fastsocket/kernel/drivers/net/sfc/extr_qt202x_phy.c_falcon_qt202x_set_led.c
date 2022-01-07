
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_QUAKE_LED0_REG ;
 int efx_mdio_write (struct efx_nic*,int ,int,int) ;

void falcon_qt202x_set_led(struct efx_nic *p, int led, int mode)
{
 int addr = MDIO_QUAKE_LED0_REG + led;
 efx_mdio_write(p, MDIO_MMD_PMAPMD, addr, mode);
}

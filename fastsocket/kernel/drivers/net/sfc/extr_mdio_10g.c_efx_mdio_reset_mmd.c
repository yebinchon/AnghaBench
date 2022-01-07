
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int dummy; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 int ETIMEDOUT ;
 int MDIO_CTRL1 ;
 int MDIO_CTRL1_RESET ;
 int efx_mdio_read (struct efx_nic*,int,int ) ;
 int efx_mdio_write (struct efx_nic*,int,int ,int) ;
 int msleep (int) ;

int efx_mdio_reset_mmd(struct efx_nic *port, int mmd,
       int spins, int spintime)
{
 u32 ctrl;


 EFX_BUG_ON_PARANOID(spins * spintime >= 5000);

 efx_mdio_write(port, mmd, MDIO_CTRL1, MDIO_CTRL1_RESET);

 do {
  msleep(spintime);
  ctrl = efx_mdio_read(port, mmd, MDIO_CTRL1);
  spins--;

 } while (spins && (ctrl & MDIO_CTRL1_RESET));

 return spins ? spins : -ETIMEDOUT;
}

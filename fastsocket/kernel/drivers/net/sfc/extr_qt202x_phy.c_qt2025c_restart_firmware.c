
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_mdio_write (struct efx_nic*,int,int,int) ;
 int msleep (int) ;

__attribute__((used)) static void qt2025c_restart_firmware(struct efx_nic *efx)
{

 efx_mdio_write(efx, 3, 0xe854, 0x00c0);
 efx_mdio_write(efx, 3, 0xe854, 0x0040);
 msleep(50);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_nic_interrupts (struct efx_nic*,int,int) ;

void efx_nic_disable_interrupts(struct efx_nic *efx)
{

 efx_nic_interrupts(efx, 0, 0);
}

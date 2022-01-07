
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ fc_disable; } ;


 int efx_mcdi_set_mac (struct efx_nic*) ;

void siena_finish_flush(struct efx_nic *efx)
{
 if (--efx->fc_disable == 0)
  efx_mcdi_set_mac(efx);
}

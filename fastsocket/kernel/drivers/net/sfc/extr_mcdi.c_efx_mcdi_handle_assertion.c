
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int efx_mcdi_exit_assertion (struct efx_nic*) ;
 int efx_mcdi_read_assertion (struct efx_nic*) ;

int efx_mcdi_handle_assertion(struct efx_nic *efx)
{
 int rc;

 rc = efx_mcdi_read_assertion(efx);
 if (rc)
  return rc;

 efx_mcdi_exit_assertion(efx);

 return 0;
}

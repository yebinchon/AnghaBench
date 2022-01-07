
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int * nic_data; int irq_status; } ;


 int RESET_TYPE_ALL ;
 int efx_mcdi_drv_attach (struct efx_nic*,int,int *) ;
 int efx_mcdi_mon_remove (struct efx_nic*) ;
 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int kfree (int *) ;
 int siena_reset_hw (struct efx_nic*,int ) ;

__attribute__((used)) static void siena_remove_nic(struct efx_nic *efx)
{
 efx_mcdi_mon_remove(efx);

 efx_nic_free_buffer(efx, &efx->irq_status);

 siena_reset_hw(efx, RESET_TYPE_ALL);


 efx_mcdi_drv_attach(efx, 0, ((void*)0));


 kfree(efx->nic_data);
 efx->nic_data = ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {scalar_t__ state; TYPE_1__* type; int reset_work; } ;
struct TYPE_2__ {int (* fini ) (struct efx_nic*) ;} ;


 int BUG_ON (int) ;
 scalar_t__ STATE_READY ;
 int cancel_work_sync (int *) ;
 int efx_fini_napi (struct efx_nic*) ;
 int efx_fini_port (struct efx_nic*) ;
 int efx_nic_fini_interrupt (struct efx_nic*) ;
 int efx_remove_all (struct efx_nic*) ;
 int efx_stop_interrupts (struct efx_nic*,int) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static void efx_pci_remove_main(struct efx_nic *efx)
{



 BUG_ON(efx->state == STATE_READY);
 cancel_work_sync(&efx->reset_work);

 efx_stop_interrupts(efx, 0);
 efx_nic_fini_interrupt(efx);
 efx_fini_port(efx);
 efx->type->fini(efx);
 efx_fini_napi(efx);
 efx_remove_all(efx);
}

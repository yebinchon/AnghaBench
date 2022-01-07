
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {TYPE_2__* type; TYPE_1__* phy_op; scalar_t__ port_initialized; int mac_lock; } ;
typedef enum reset_type { ____Placeholder_reset_type } reset_type ;
struct TYPE_4__ {int (* fini ) (struct efx_nic*) ;} ;
struct TYPE_3__ {int (* fini ) (struct efx_nic*) ;} ;


 int EFX_ASSERT_RESET_SERIALISED (struct efx_nic*) ;
 int RESET_TYPE_INVISIBLE ;
 int efx_stop_all (struct efx_nic*) ;
 int efx_stop_interrupts (struct efx_nic*,int) ;
 int mutex_lock (int *) ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

void efx_reset_down(struct efx_nic *efx, enum reset_type method)
{
 EFX_ASSERT_RESET_SERIALISED(efx);

 efx_stop_all(efx);
 efx_stop_interrupts(efx, 0);

 mutex_lock(&efx->mac_lock);
 if (efx->port_initialized && method != RESET_TYPE_INVISIBLE)
  efx->phy_op->fini(efx);
 efx->type->fini(efx);
}

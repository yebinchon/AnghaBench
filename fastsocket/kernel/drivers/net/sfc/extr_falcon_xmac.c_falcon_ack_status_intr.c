
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {scalar_t__ xmac_poll_required; } ;
struct TYPE_2__ {int up; } ;
struct efx_nic {TYPE_1__ link_state; struct falcon_nic_data* nic_data; } ;
typedef int efx_oword_t ;


 scalar_t__ EFX_REV_FALCON_B0 ;
 int EFX_WORKAROUND_5147 (struct efx_nic*) ;
 int FR_AB_XM_MGT_INT_MSK ;
 scalar_t__ LOOPBACK_INTERNAL (struct efx_nic*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void falcon_ack_status_intr(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 efx_oword_t reg;

 if ((efx_nic_rev(efx) != EFX_REV_FALCON_B0) || LOOPBACK_INTERNAL(efx))
  return;


 if (!EFX_WORKAROUND_5147(efx) || !efx->link_state.up)
  return;



 if (nic_data->xmac_poll_required)
  return;

 efx_reado(efx, &reg, FR_AB_XM_MGT_INT_MSK);
}

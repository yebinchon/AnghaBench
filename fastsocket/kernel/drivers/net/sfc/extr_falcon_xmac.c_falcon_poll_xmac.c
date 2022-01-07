
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {int xmac_poll_required; } ;
struct TYPE_2__ {int up; } ;
struct efx_nic {TYPE_1__ link_state; struct falcon_nic_data* nic_data; } ;


 int EFX_WORKAROUND_5147 (struct efx_nic*) ;
 int falcon_ack_status_intr (struct efx_nic*) ;
 int falcon_xmac_link_ok_retry (struct efx_nic*,int) ;

void falcon_poll_xmac(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;

 if (!EFX_WORKAROUND_5147(efx) || !efx->link_state.up ||
     !nic_data->xmac_poll_required)
  return;

 nic_data->xmac_poll_required = !falcon_xmac_link_ok_retry(efx, 1);
 falcon_ack_status_intr(efx);
}

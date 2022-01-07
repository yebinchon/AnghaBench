
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_tx_queue {int txd; int queue; struct efx_nic* efx; } ;
struct efx_nic {TYPE_1__* type; } ;
typedef int efx_oword_t ;
struct TYPE_2__ {int txd_ptr_tbl_base; } ;


 int EFX_ZERO_OWORD (int ) ;
 int efx_fini_special_buffer (struct efx_nic*,int *) ;
 int efx_writeo_table (struct efx_nic*,int *,int ,int ) ;

void efx_nic_fini_tx(struct efx_tx_queue *tx_queue)
{
 struct efx_nic *efx = tx_queue->efx;
 efx_oword_t tx_desc_ptr;


 EFX_ZERO_OWORD(tx_desc_ptr);
 efx_writeo_table(efx, &tx_desc_ptr, efx->type->txd_ptr_tbl_base,
    tx_queue->queue);


 efx_fini_special_buffer(efx, &tx_queue->txd);
}

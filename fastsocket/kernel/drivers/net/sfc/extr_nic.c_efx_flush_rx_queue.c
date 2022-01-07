
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int FRF_AZ_RX_FLUSH_DESCQ ;
 int FRF_AZ_RX_FLUSH_DESCQ_CMD ;
 int FR_AZ_RX_FLUSH_DESCQ ;
 int efx_rx_queue_index (struct efx_rx_queue*) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void efx_flush_rx_queue(struct efx_rx_queue *rx_queue)
{
 struct efx_nic *efx = rx_queue->efx;
 efx_oword_t rx_flush_descq;

 EFX_POPULATE_OWORD_2(rx_flush_descq,
        FRF_AZ_RX_FLUSH_DESCQ_CMD, 1,
        FRF_AZ_RX_FLUSH_DESCQ,
        efx_rx_queue_index(rx_queue));
 efx_writeo(efx, &rx_flush_descq, FR_AZ_RX_FLUSH_DESCQ);
}

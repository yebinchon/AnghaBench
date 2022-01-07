
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; } ;
struct qlcnic_host_tx_ring {int napi; } ;
struct qlcnic_host_sds_ring {int napi; } ;
struct qlcnic_adapter {scalar_t__ is_up; int max_sds_rings; int flags; int max_drv_tx_rings; struct qlcnic_host_tx_ring* tx_ring; struct qlcnic_recv_context* recv_ctx; } ;


 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ;
 int QLCNIC_MSIX_ENABLED ;
 int QLCNIC_TX_INTR_SHARED ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int qlcnic_83xx_disable_intr (struct qlcnic_adapter*,struct qlcnic_host_sds_ring*) ;
 int qlcnic_83xx_disable_tx_intr (struct qlcnic_adapter*,struct qlcnic_host_tx_ring*) ;

void qlcnic_83xx_napi_disable(struct qlcnic_adapter *adapter)
{
 int ring;
 struct qlcnic_host_sds_ring *sds_ring;
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
 struct qlcnic_host_tx_ring *tx_ring;

 if (adapter->is_up != QLCNIC_ADAPTER_UP_MAGIC)
  return;

 for (ring = 0; ring < adapter->max_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];
  if (adapter->flags & QLCNIC_MSIX_ENABLED)
   qlcnic_83xx_disable_intr(adapter, sds_ring);
  napi_synchronize(&sds_ring->napi);
  napi_disable(&sds_ring->napi);
 }

 if ((adapter->flags & QLCNIC_MSIX_ENABLED) &&
     !(adapter->flags & QLCNIC_TX_INTR_SHARED)) {
  for (ring = 0; ring < adapter->max_drv_tx_rings; ring++) {
   tx_ring = &adapter->tx_ring[ring];
   qlcnic_83xx_disable_tx_intr(adapter, tx_ring);
   napi_synchronize(&tx_ring->napi);
   napi_disable(&tx_ring->napi);
  }
 }
}

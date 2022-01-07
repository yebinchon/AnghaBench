
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; } ;
struct qlcnic_host_sds_ring {int napi; } ;
struct qlcnic_adapter {scalar_t__ is_up; int max_sds_rings; struct qlcnic_recv_context* recv_ctx; } ;


 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 int qlcnic_disable_int (struct qlcnic_host_sds_ring*) ;

void qlcnic_82xx_napi_disable(struct qlcnic_adapter *adapter)
{
 int ring;
 struct qlcnic_host_sds_ring *sds_ring;
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;

 if (adapter->is_up != QLCNIC_ADAPTER_UP_MAGIC)
  return;

 for (ring = 0; ring < adapter->max_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];
  qlcnic_disable_int(sds_ring);
  napi_synchronize(&sds_ring->napi);
  napi_disable(&sds_ring->napi);
 }
}

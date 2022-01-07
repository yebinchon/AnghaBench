
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_sds_ring {int napi; } ;
struct netxen_recv_context {struct nx_host_sds_ring* sds_rings; } ;
struct netxen_adapter {int max_sds_rings; struct netxen_recv_context recv_ctx; } ;


 int netif_napi_del (int *) ;
 int netxen_free_sds_rings (struct netxen_recv_context*) ;

__attribute__((used)) static void
netxen_napi_del(struct netxen_adapter *adapter)
{
 int ring;
 struct nx_host_sds_ring *sds_ring;
 struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;

 for (ring = 0; ring < adapter->max_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];
  netif_napi_del(&sds_ring->napi);
 }

 netxen_free_sds_rings(&adapter->recv_ctx);
}

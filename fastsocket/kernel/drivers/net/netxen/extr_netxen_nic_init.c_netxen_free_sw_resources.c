
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx_host_tx_ring {int * cmd_buf_arr; int * rx_buf_arr; } ;
struct nx_host_rds_ring {int * cmd_buf_arr; int * rx_buf_arr; } ;
struct netxen_recv_context {struct nx_host_tx_ring* rds_rings; } ;
struct netxen_adapter {int max_rds_rings; struct nx_host_tx_ring* tx_ring; struct netxen_recv_context recv_ctx; } ;


 int kfree (struct nx_host_tx_ring*) ;
 int vfree (int *) ;

void netxen_free_sw_resources(struct netxen_adapter *adapter)
{
 struct netxen_recv_context *recv_ctx;
 struct nx_host_rds_ring *rds_ring;
 struct nx_host_tx_ring *tx_ring;
 int ring;

 recv_ctx = &adapter->recv_ctx;

 if (recv_ctx->rds_rings == ((void*)0))
  goto skip_rds;

 for (ring = 0; ring < adapter->max_rds_rings; ring++) {
  rds_ring = &recv_ctx->rds_rings[ring];
  vfree(rds_ring->rx_buf_arr);
  rds_ring->rx_buf_arr = ((void*)0);
 }
 kfree(recv_ctx->rds_rings);

skip_rds:
 if (adapter->tx_ring == ((void*)0))
  return;

 tx_ring = adapter->tx_ring;
 vfree(tx_ring->cmd_buf_arr);
 kfree(tx_ring);
 adapter->tx_ring = ((void*)0);
}

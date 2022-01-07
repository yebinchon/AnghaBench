
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct nx_host_tx_ring {int * desc_head; int phys_addr; } ;
struct nx_host_sds_ring {int * desc_head; int phys_addr; } ;
struct nx_host_rds_ring {int * desc_head; int phys_addr; } ;
struct netxen_ring_ctx {int dummy; } ;
struct netxen_recv_context {struct nx_host_sds_ring* sds_rings; struct nx_host_rds_ring* rds_rings; int * hwctx; int phys_addr; } ;
struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {int portnum; int max_rds_rings; int max_sds_rings; int pdev; struct nx_host_tx_ring* tx_ring; struct netxen_recv_context recv_ctx; int state; TYPE_1__ ahw; } ;


 int CRB_CTX_SIGNATURE_REG (int) ;
 int NETXEN_CTX_D3_RESET ;
 int NXWR32 (struct netxen_adapter*,int ,int) ;
 int NX_IS_REVISION_P2 (int ) ;
 int RCV_DESC_RINGSIZE (struct nx_host_rds_ring*) ;
 int STATUS_DESC_RINGSIZE (struct nx_host_sds_ring*) ;
 int TX_DESC_RINGSIZE (struct nx_host_tx_ring*) ;
 int __NX_FW_ATTACHED ;
 int msleep (int) ;
 int netxen_api_lock (struct netxen_adapter*) ;
 int netxen_api_unlock (struct netxen_adapter*) ;
 int nx_fw_cmd_destroy_rx_ctx (struct netxen_adapter*) ;
 int nx_fw_cmd_destroy_tx_ctx (struct netxen_adapter*) ;
 int pci_free_consistent (int ,int,int *,int ) ;
 int test_and_clear_bit (int ,int *) ;

void netxen_free_hw_resources(struct netxen_adapter *adapter)
{
 struct netxen_recv_context *recv_ctx;
 struct nx_host_rds_ring *rds_ring;
 struct nx_host_sds_ring *sds_ring;
 struct nx_host_tx_ring *tx_ring;
 int ring;

 int port = adapter->portnum;

 if (!NX_IS_REVISION_P2(adapter->ahw.revision_id)) {
  if (!test_and_clear_bit(__NX_FW_ATTACHED, &adapter->state))
   goto done;

  nx_fw_cmd_destroy_rx_ctx(adapter);
  nx_fw_cmd_destroy_tx_ctx(adapter);
 } else {
  netxen_api_lock(adapter);
  NXWR32(adapter, CRB_CTX_SIGNATURE_REG(port),
    NETXEN_CTX_D3_RESET | port);
  netxen_api_unlock(adapter);
 }


 msleep(20);

done:
 recv_ctx = &adapter->recv_ctx;

 if (recv_ctx->hwctx != ((void*)0)) {
  pci_free_consistent(adapter->pdev,
    sizeof(struct netxen_ring_ctx) +
    sizeof(uint32_t),
    recv_ctx->hwctx,
    recv_ctx->phys_addr);
  recv_ctx->hwctx = ((void*)0);
 }

 tx_ring = adapter->tx_ring;
 if (tx_ring->desc_head != ((void*)0)) {
  pci_free_consistent(adapter->pdev,
    TX_DESC_RINGSIZE(tx_ring),
    tx_ring->desc_head, tx_ring->phys_addr);
  tx_ring->desc_head = ((void*)0);
 }

 for (ring = 0; ring < adapter->max_rds_rings; ring++) {
  rds_ring = &recv_ctx->rds_rings[ring];

  if (rds_ring->desc_head != ((void*)0)) {
   pci_free_consistent(adapter->pdev,
     RCV_DESC_RINGSIZE(rds_ring),
     rds_ring->desc_head,
     rds_ring->phys_addr);
   rds_ring->desc_head = ((void*)0);
  }
 }

 for (ring = 0; ring < adapter->max_sds_rings; ring++) {
  sds_ring = &recv_ctx->sds_rings[ring];

  if (sds_ring->desc_head != ((void*)0)) {
   pci_free_consistent(adapter->pdev,
    STATUS_DESC_RINGSIZE(sds_ring),
    sds_ring->desc_head,
    sds_ring->phys_addr);
   sds_ring->desc_head = ((void*)0);
  }
 }
}

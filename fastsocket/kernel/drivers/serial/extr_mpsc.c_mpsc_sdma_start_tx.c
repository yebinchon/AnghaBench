
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct mpsc_tx_desc {int cmdstat; } ;
struct TYPE_2__ {int dev; } ;
struct mpsc_port_info {int txr_tail; scalar_t__ txr_p; scalar_t__ cache_mgmt; TYPE_1__ port; scalar_t__ txr; } ;


 int DMA_FROM_DEVICE ;
 int MPSC_TXRE_SIZE ;
 int SDMA_DESC_CMDSTAT_O ;
 int SDMA_SDCM_STD ;
 int SDMA_SDCM_TXD ;
 int be32_to_cpu (int ) ;
 int dma_cache_sync (int ,void*,int,int ) ;
 int invalidate_dcache_range (scalar_t__,scalar_t__) ;
 int mpsc_sdma_cmd (struct mpsc_port_info*,int) ;
 int mpsc_sdma_set_tx_ring (struct mpsc_port_info*,struct mpsc_tx_desc*) ;
 int mpsc_sdma_tx_active (struct mpsc_port_info*) ;

__attribute__((used)) static void mpsc_sdma_start_tx(struct mpsc_port_info *pi)
{
 struct mpsc_tx_desc *txre, *txre_p;


 if (!mpsc_sdma_tx_active(pi)) {
  txre = (struct mpsc_tx_desc *)(pi->txr
    + (pi->txr_tail * MPSC_TXRE_SIZE));
  dma_cache_sync(pi->port.dev, (void *)txre, MPSC_TXRE_SIZE,
    DMA_FROM_DEVICE);






  if (be32_to_cpu(txre->cmdstat) & SDMA_DESC_CMDSTAT_O) {
   txre_p = (struct mpsc_tx_desc *)
    (pi->txr_p + (pi->txr_tail * MPSC_TXRE_SIZE));

   mpsc_sdma_set_tx_ring(pi, txre_p);
   mpsc_sdma_cmd(pi, SDMA_SDCM_STD | SDMA_SDCM_TXD);
  }
 }
}

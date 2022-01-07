
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct mpsc_tx_desc {int bytecnt; int cmdstat; } ;
struct TYPE_3__ {int tx; } ;
struct TYPE_4__ {int dev; TYPE_1__ icount; } ;
struct mpsc_port_info {int txr_tail; int txr_head; int tx_lock; scalar_t__ cache_mgmt; TYPE_2__ port; scalar_t__ txr; } ;


 int DMA_FROM_DEVICE ;
 int MPSC_TXRE_SIZE ;
 int MPSC_TXR_ENTRIES ;
 int SDMA_DESC_CMDSTAT_O ;
 scalar_t__ be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int dma_cache_sync (int ,void*,int,int ) ;
 int invalidate_dcache_range (scalar_t__,scalar_t__) ;
 int mpsc_copy_tx_data (struct mpsc_port_info*) ;
 int mpsc_sdma_start_tx (struct mpsc_port_info*) ;
 int mpsc_sdma_tx_active (struct mpsc_port_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mpsc_tx_intr(struct mpsc_port_info *pi)
{
 struct mpsc_tx_desc *txre;
 int rc = 0;
 unsigned long iflags;

 spin_lock_irqsave(&pi->tx_lock, iflags);

 if (!mpsc_sdma_tx_active(pi)) {
  txre = (struct mpsc_tx_desc *)(pi->txr
    + (pi->txr_tail * MPSC_TXRE_SIZE));

  dma_cache_sync(pi->port.dev, (void *)txre, MPSC_TXRE_SIZE,
    DMA_FROM_DEVICE);






  while (!(be32_to_cpu(txre->cmdstat) & SDMA_DESC_CMDSTAT_O)) {
   rc = 1;
   pi->port.icount.tx += be16_to_cpu(txre->bytecnt);
   pi->txr_tail = (pi->txr_tail+1) & (MPSC_TXR_ENTRIES-1);


   if (pi->txr_head == pi->txr_tail)
    break;

   txre = (struct mpsc_tx_desc *)(pi->txr
     + (pi->txr_tail * MPSC_TXRE_SIZE));
   dma_cache_sync(pi->port.dev, (void *)txre,
     MPSC_TXRE_SIZE, DMA_FROM_DEVICE);





  }

  mpsc_copy_tx_data(pi);
  mpsc_sdma_start_tx(pi);
 }

 spin_unlock_irqrestore(&pi->tx_lock, iflags);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
typedef scalar_t__ u32 ;
struct mpsc_tx_desc {int cmdstat; int bytecnt; int shadow; } ;
struct TYPE_2__ {int dev; } ;
struct mpsc_port_info {int txr_head; scalar_t__ cache_mgmt; TYPE_1__ port; scalar_t__ txr; } ;


 int DMA_BIDIRECTIONAL ;
 int MPSC_TXRE_SIZE ;
 int SDMA_DESC_CMDSTAT_EI ;
 int SDMA_DESC_CMDSTAT_F ;
 int SDMA_DESC_CMDSTAT_L ;
 int SDMA_DESC_CMDSTAT_O ;
 int cpu_to_be16 (scalar_t__) ;
 int cpu_to_be32 (int) ;
 int dma_cache_sync (int ,void*,int,int ) ;
 int flush_dcache_range (scalar_t__,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void mpsc_setup_tx_desc(struct mpsc_port_info *pi, u32 count, u32 intr)
{
 struct mpsc_tx_desc *txre;

 txre = (struct mpsc_tx_desc *)(pi->txr
   + (pi->txr_head * MPSC_TXRE_SIZE));

 txre->bytecnt = cpu_to_be16(count);
 txre->shadow = txre->bytecnt;
 wmb();
 txre->cmdstat = cpu_to_be32(SDMA_DESC_CMDSTAT_O | SDMA_DESC_CMDSTAT_F
   | SDMA_DESC_CMDSTAT_L
   | ((intr) ? SDMA_DESC_CMDSTAT_EI : 0));
 wmb();
 dma_cache_sync(pi->port.dev, (void *)txre, MPSC_TXRE_SIZE,
   DMA_BIDIRECTIONAL);





}

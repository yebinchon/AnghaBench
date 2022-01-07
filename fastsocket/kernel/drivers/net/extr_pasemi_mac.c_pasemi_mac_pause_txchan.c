
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pasemi_mac {TYPE_2__* dma_pdev; } ;
struct TYPE_4__ {int chno; } ;
struct TYPE_6__ {TYPE_1__ chan; } ;
struct TYPE_5__ {int dev; } ;


 unsigned int MAX_RETRIES ;
 int PAS_DMA_TXCHAN_TCMDSTA (int) ;
 unsigned int PAS_DMA_TXCHAN_TCMDSTA_ACT ;
 int PAS_DMA_TXCHAN_TCMDSTA_ST ;
 int cond_resched () ;
 int dev_err (int *,char*,unsigned int) ;
 unsigned int read_dma_reg (int ) ;
 TYPE_3__* tx_ring (struct pasemi_mac*) ;
 int write_dma_reg (int ,int ) ;

__attribute__((used)) static void pasemi_mac_pause_txchan(struct pasemi_mac *mac)
{
 unsigned int sta, retries;
 int txch = tx_ring(mac)->chan.chno;

 write_dma_reg(PAS_DMA_TXCHAN_TCMDSTA(txch),
        PAS_DMA_TXCHAN_TCMDSTA_ST);

 for (retries = 0; retries < MAX_RETRIES; retries++) {
  sta = read_dma_reg(PAS_DMA_TXCHAN_TCMDSTA(txch));
  if (!(sta & PAS_DMA_TXCHAN_TCMDSTA_ACT))
   break;
  cond_resched();
 }

 if (sta & PAS_DMA_TXCHAN_TCMDSTA_ACT)
  dev_err(&mac->dma_pdev->dev,
   "Failed to stop tx channel, tcmdsta %08x\n", sta);

 write_dma_reg(PAS_DMA_TXCHAN_TCMDSTA(txch), 0);
}

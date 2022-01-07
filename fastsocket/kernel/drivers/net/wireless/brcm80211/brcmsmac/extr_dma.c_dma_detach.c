
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pub {int dummy; } ;
struct dma_info {int txdalign; int rxdalign; struct dma_info* rxp; struct dma_info* txp; int rxdpaorig; scalar_t__ rxd64; int rxdalloc; int dmadev; int txdpaorig; scalar_t__ txd64; int txdalloc; int name; int core; } ;
typedef int s8 ;


 int brcms_dbg_dma (int ,char*,int ) ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int kfree (struct dma_info*) ;

void dma_detach(struct dma_pub *pub)
{
 struct dma_info *di = (struct dma_info *)pub;

 brcms_dbg_dma(di->core, "%s:\n", di->name);


 if (di->txd64)
  dma_free_coherent(di->dmadev, di->txdalloc,
      ((s8 *)di->txd64 - di->txdalign),
      (di->txdpaorig));
 if (di->rxd64)
  dma_free_coherent(di->dmadev, di->rxdalloc,
      ((s8 *)di->rxd64 - di->rxdalign),
      (di->rxdpaorig));


 kfree(di->txp);
 kfree(di->rxp);


 kfree(di);

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_dma_chan {int common; int desc_pool; } ;
struct TYPE_2__ {int phys; int tx_submit; } ;
struct fsl_desc_sw {TYPE_1__ async_tx; int tx_list; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 struct fsl_desc_sw* dma_pool_alloc (int ,int ,int *) ;
 int fsl_dma_tx_submit ;
 int memset (struct fsl_desc_sw*,int ,int) ;

__attribute__((used)) static struct fsl_desc_sw *fsl_dma_alloc_descriptor(
     struct fsl_dma_chan *fsl_chan)
{
 dma_addr_t pdesc;
 struct fsl_desc_sw *desc_sw;

 desc_sw = dma_pool_alloc(fsl_chan->desc_pool, GFP_ATOMIC, &pdesc);
 if (desc_sw) {
  memset(desc_sw, 0, sizeof(struct fsl_desc_sw));
  INIT_LIST_HEAD(&desc_sw->tx_list);
  dma_async_tx_descriptor_init(&desc_sw->async_tx,
      &fsl_chan->common);
  desc_sw->async_tx.tx_submit = fsl_dma_tx_submit;
  desc_sw->async_tx.phys = pdesc;
 }

 return desc_sw;
}

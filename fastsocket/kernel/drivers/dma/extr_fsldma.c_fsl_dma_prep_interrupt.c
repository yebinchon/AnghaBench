
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_dma_chan {int dev; } ;
struct dma_async_tx_descriptor {unsigned long flags; int cookie; } ;
struct fsl_desc_sw {struct dma_async_tx_descriptor async_tx; int tx_list; int node; } ;
struct dma_chan {int dummy; } ;


 int EBUSY ;
 int dev_err (int ,char*) ;
 struct fsl_desc_sw* fsl_dma_alloc_descriptor (struct fsl_dma_chan*) ;
 int list_add_tail (int *,int *) ;
 int set_ld_eol (struct fsl_dma_chan*,struct fsl_desc_sw*) ;
 struct fsl_dma_chan* to_fsl_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *
fsl_dma_prep_interrupt(struct dma_chan *chan, unsigned long flags)
{
 struct fsl_dma_chan *fsl_chan;
 struct fsl_desc_sw *new;

 if (!chan)
  return ((void*)0);

 fsl_chan = to_fsl_chan(chan);

 new = fsl_dma_alloc_descriptor(fsl_chan);
 if (!new) {
  dev_err(fsl_chan->dev, "No free memory for link descriptor\n");
  return ((void*)0);
 }

 new->async_tx.cookie = -EBUSY;
 new->async_tx.flags = flags;


 list_add_tail(&new->node, &new->tx_list);


 set_ld_eol(fsl_chan, new);

 return &new->async_tx;
}

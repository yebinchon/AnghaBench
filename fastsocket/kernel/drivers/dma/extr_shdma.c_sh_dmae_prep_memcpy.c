
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_dmae_chan {int dev; } ;
struct dma_async_tx_descriptor {unsigned long flags; int cookie; } ;
struct TYPE_2__ {size_t sar; size_t dar; size_t tcr; } ;
struct sh_desc {struct dma_async_tx_descriptor async_tx; int tx_list; int node; int mark; TYPE_1__ hw; } ;
struct dma_chan {int dummy; } ;
typedef size_t dma_addr_t ;


 int DESC_NCOMP ;
 int EBUSY ;
 scalar_t__ SH_DMA_TCR_MAX ;
 int async_tx_ack (struct dma_async_tx_descriptor*) ;
 int dev_err (int ,char*) ;
 int list_add_tail (int *,int *) ;
 size_t min (size_t,size_t) ;
 struct sh_desc* sh_dmae_get_desc (struct sh_dmae_chan*) ;
 int sh_dmae_put_desc (struct sh_dmae_chan*,struct sh_desc*) ;
 struct sh_dmae_chan* to_sh_chan (struct dma_chan*) ;

__attribute__((used)) static struct dma_async_tx_descriptor *sh_dmae_prep_memcpy(
 struct dma_chan *chan, dma_addr_t dma_dest, dma_addr_t dma_src,
 size_t len, unsigned long flags)
{
 struct sh_dmae_chan *sh_chan;
 struct sh_desc *first = ((void*)0), *prev = ((void*)0), *new;
 size_t copy_size;

 if (!chan)
  return ((void*)0);

 if (!len)
  return ((void*)0);

 sh_chan = to_sh_chan(chan);

 do {

  new = sh_dmae_get_desc(sh_chan);
  if (!new) {
   dev_err(sh_chan->dev,
     "No free memory for link descriptor\n");
   goto err_get_desc;
  }

  copy_size = min(len, (size_t)SH_DMA_TCR_MAX);

  new->hw.sar = dma_src;
  new->hw.dar = dma_dest;
  new->hw.tcr = copy_size;
  if (!first)
   first = new;

  new->mark = DESC_NCOMP;
  async_tx_ack(&new->async_tx);

  prev = new;
  len -= copy_size;
  dma_src += copy_size;
  dma_dest += copy_size;

  list_add_tail(&new->node, &first->tx_list);
 } while (len);

 new->async_tx.flags = flags;
 new->async_tx.cookie = -EBUSY;

 return &first->async_tx;

err_get_desc:
 sh_dmae_put_desc(sh_chan, first);
 return ((void*)0);

}

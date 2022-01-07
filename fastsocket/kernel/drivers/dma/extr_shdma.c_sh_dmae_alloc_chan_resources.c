
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_dmae_chan {scalar_t__ descs_allocated; int desc_lock; int common; } ;
struct TYPE_2__ {int flags; int tx_submit; } ;
struct sh_desc {int tx_list; TYPE_1__ async_tx; } ;
struct dma_chan {int dummy; } ;


 int DMA_CTRL_ACK ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ NR_DESCS_PER_CHANNEL ;
 int dma_async_tx_descriptor_init (TYPE_1__*,int *) ;
 struct sh_desc* kzalloc (int,int ) ;
 int sh_dmae_put_desc (struct sh_dmae_chan*,struct sh_desc*) ;
 int sh_dmae_tx_submit ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct sh_dmae_chan* to_sh_chan (struct dma_chan*) ;

__attribute__((used)) static int sh_dmae_alloc_chan_resources(struct dma_chan *chan)
{
 struct sh_dmae_chan *sh_chan = to_sh_chan(chan);
 struct sh_desc *desc;

 spin_lock_bh(&sh_chan->desc_lock);
 while (sh_chan->descs_allocated < NR_DESCS_PER_CHANNEL) {
  spin_unlock_bh(&sh_chan->desc_lock);
  desc = kzalloc(sizeof(struct sh_desc), GFP_KERNEL);
  if (!desc) {
   spin_lock_bh(&sh_chan->desc_lock);
   break;
  }
  dma_async_tx_descriptor_init(&desc->async_tx,
     &sh_chan->common);
  desc->async_tx.tx_submit = sh_dmae_tx_submit;
  desc->async_tx.flags = DMA_CTRL_ACK;
  INIT_LIST_HEAD(&desc->tx_list);
  sh_dmae_put_desc(sh_chan, desc);

  spin_lock_bh(&sh_chan->desc_lock);
  sh_chan->descs_allocated++;
 }
 spin_unlock_bh(&sh_chan->desc_lock);

 return sh_chan->descs_allocated;
}

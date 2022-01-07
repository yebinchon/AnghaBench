
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int prev; } ;
struct TYPE_4__ {int cookie; } ;
struct sh_dmae_chan {int desc_lock; TYPE_3__ ld_queue; TYPE_1__ common; } ;
struct TYPE_5__ {int cookie; } ;
struct sh_desc {int tx_list; TYPE_2__ async_tx; } ;
struct dma_async_tx_descriptor {int chan; } ;
typedef int dma_cookie_t ;


 int EBUSY ;
 int list_splice_init (int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct sh_dmae_chan* to_sh_chan (int ) ;
 struct sh_desc* tx_to_sh_desc (struct dma_async_tx_descriptor*) ;

__attribute__((used)) static dma_cookie_t sh_dmae_tx_submit(struct dma_async_tx_descriptor *tx)
{
 struct sh_desc *desc = tx_to_sh_desc(tx);
 struct sh_dmae_chan *sh_chan = to_sh_chan(tx->chan);
 dma_cookie_t cookie;

 spin_lock_bh(&sh_chan->desc_lock);

 cookie = sh_chan->common.cookie;
 cookie++;
 if (cookie < 0)
  cookie = 1;


 if (desc->async_tx.cookie != -EBUSY)
  desc->async_tx.cookie = cookie;
 sh_chan->common.cookie = desc->async_tx.cookie;

 list_splice_init(&desc->tx_list, sh_chan->ld_queue.prev);

 spin_unlock_bh(&sh_chan->desc_lock);

 return cookie;
}

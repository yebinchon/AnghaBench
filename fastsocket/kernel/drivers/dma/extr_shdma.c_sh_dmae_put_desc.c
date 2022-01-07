
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_dmae_chan {int desc_lock; int ld_free; } ;
struct sh_desc {int node; int tx_list; } ;


 int list_add (int *,int *) ;
 int list_splice_init (int *,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void sh_dmae_put_desc(struct sh_dmae_chan *sh_chan, struct sh_desc *desc)
{
 if (desc) {
  spin_lock_bh(&sh_chan->desc_lock);

  list_splice_init(&desc->tx_list, &sh_chan->ld_free);
  list_add(&desc->node, &sh_chan->ld_free);

  spin_unlock_bh(&sh_chan->desc_lock);
 }
}

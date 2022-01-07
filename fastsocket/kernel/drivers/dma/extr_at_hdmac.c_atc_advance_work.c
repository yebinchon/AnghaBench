
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at_dma_chan {int active_list; int chan_common; } ;


 int atc_chain_complete (struct at_dma_chan*,int ) ;
 int atc_complete_all (struct at_dma_chan*) ;
 int atc_dostart (struct at_dma_chan*,int ) ;
 int atc_first_active (struct at_dma_chan*) ;
 int chan2dev (int *) ;
 int dev_vdbg (int ,char*) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ list_is_singular (int *) ;

__attribute__((used)) static void atc_advance_work(struct at_dma_chan *atchan)
{
 dev_vdbg(chan2dev(&atchan->chan_common), "advance_work\n");

 if (list_empty(&atchan->active_list) ||
     list_is_singular(&atchan->active_list)) {
  atc_complete_all(atchan);
 } else {
  atc_chain_complete(atchan, atc_first_active(atchan));

  atc_dostart(atchan, atc_first_active(atchan));
 }
}

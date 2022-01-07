
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasemi_dmachan {int chan_type; int priv; int chno; scalar_t__ ring_virt; } ;




 int kfree (int ) ;
 int pasemi_dma_free_ring (struct pasemi_dmachan*) ;
 int pasemi_free_rx_chan (int ) ;
 int pasemi_free_tx_chan (int ) ;

void pasemi_dma_free_chan(struct pasemi_dmachan *chan)
{
 if (chan->ring_virt)
  pasemi_dma_free_ring(chan);

 switch (chan->chan_type & (129|128)) {
 case 129:
  pasemi_free_rx_chan(chan->chno);
  break;
 case 128:
  pasemi_free_tx_chan(chan->chno);
  break;
 }

 kfree(chan->priv);
}

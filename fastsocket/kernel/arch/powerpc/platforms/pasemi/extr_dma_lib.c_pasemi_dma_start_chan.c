
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pasemi_dmachan {scalar_t__ chan_type; int chno; } ;


 int PAS_DMA_RXCHAN_CCMDSTA (int ) ;
 int const PAS_DMA_RXCHAN_CCMDSTA_EN ;
 int PAS_DMA_TXCHAN_TCMDSTA (int ) ;
 int const PAS_DMA_TXCHAN_TCMDSTA_EN ;
 scalar_t__ RXCHAN ;
 int pasemi_write_dma_reg (int ,int const) ;

void pasemi_dma_start_chan(const struct pasemi_dmachan *chan, const u32 cmdsta)
{
 if (chan->chan_type == RXCHAN)
  pasemi_write_dma_reg(PAS_DMA_RXCHAN_CCMDSTA(chan->chno),
         cmdsta | PAS_DMA_RXCHAN_CCMDSTA_EN);
 else
  pasemi_write_dma_reg(PAS_DMA_TXCHAN_TCMDSTA(chan->chno),
         cmdsta | PAS_DMA_TXCHAN_TCMDSTA_EN);
}

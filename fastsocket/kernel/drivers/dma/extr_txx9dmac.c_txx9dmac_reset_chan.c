
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txx9dmac_chan {int dummy; } ;


 int CCR ;
 int CHAR ;
 int CNTR ;
 int DAIR ;
 int DAR ;
 int SAIR ;
 int SAR ;
 int TXX9_DMA_CCR_CHRST ;
 int channel64_clear_CHAR (struct txx9dmac_chan*) ;
 int channel_writel (struct txx9dmac_chan*,int ,int ) ;
 int channel_writeq (struct txx9dmac_chan*,int ,int ) ;
 scalar_t__ is_dmac64 (struct txx9dmac_chan*) ;
 int mmiowb () ;

__attribute__((used)) static void txx9dmac_reset_chan(struct txx9dmac_chan *dc)
{
 channel_writel(dc, CCR, TXX9_DMA_CCR_CHRST);
 if (is_dmac64(dc)) {
  channel64_clear_CHAR(dc);
  channel_writeq(dc, SAR, 0);
  channel_writeq(dc, DAR, 0);
 } else {
  channel_writel(dc, CHAR, 0);
  channel_writel(dc, SAR, 0);
  channel_writel(dc, DAR, 0);
 }
 channel_writel(dc, CNTR, 0);
 channel_writel(dc, SAIR, 0);
 channel_writel(dc, DAIR, 0);
 channel_writel(dc, CCR, 0);
 mmiowb();
}

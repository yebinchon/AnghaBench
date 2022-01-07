
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HW_APBH_CTRL1 ;
 scalar_t__ REGS_APBH_BASE ;


 int STMP3XXX_DMA_BUS (int) ;
 int STMP3XXX_DMA_CHANNEL (int) ;
 int __raw_readl (scalar_t__) ;

int stmp3xxx_arch_dma_is_interrupt(int channel)
{
 int r = 0;

 switch (STMP3XXX_DMA_BUS(channel)) {
 case 129:
  r = __raw_readl(REGS_APBH_BASE + HW_APBH_CTRL1) &
   (1 << STMP3XXX_DMA_CHANNEL(channel));
  break;

 case 128:
  r = __raw_readl(REGS_APBH_BASE + HW_APBH_CTRL1) &
   (1 << STMP3XXX_DMA_CHANNEL(channel));
  break;
 }
 return r;
}

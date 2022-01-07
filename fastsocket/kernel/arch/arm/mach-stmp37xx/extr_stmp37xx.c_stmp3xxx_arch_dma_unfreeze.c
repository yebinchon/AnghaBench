
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HW_APBH_CTRL0 ;
 scalar_t__ REGS_APBH_BASE ;


 int STMP3XXX_DMA_BUS (int) ;
 int STMP3XXX_DMA_CHANNEL (int) ;
 int stmp3xxx_clearl (int,scalar_t__) ;

void stmp3xxx_arch_dma_unfreeze(int channel)
{
 unsigned chbit = 1 << STMP3XXX_DMA_CHANNEL(channel);

 switch (STMP3XXX_DMA_BUS(channel)) {
 case 129:
  stmp3xxx_clearl(1 << chbit, REGS_APBH_BASE + HW_APBH_CTRL0);
  break;
 case 128:
  stmp3xxx_clearl(1 << chbit, REGS_APBH_BASE + HW_APBH_CTRL0);
  break;
 }
}

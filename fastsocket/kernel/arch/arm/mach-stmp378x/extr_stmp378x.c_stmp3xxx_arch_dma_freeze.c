
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ HW_APBH_CTRL0 ;
 scalar_t__ HW_APBX_CHANNEL_CTRL ;
 scalar_t__ REGS_APBH_BASE ;
 scalar_t__ REGS_APBX_BASE ;


 int STMP3XXX_DMA_BUS (int) ;
 int STMP3XXX_DMA_CHANNEL (int) ;
 int stmp3xxx_setl (int,scalar_t__) ;

void stmp3xxx_arch_dma_freeze(int channel)
{
 unsigned chbit = 1 << STMP3XXX_DMA_CHANNEL(channel);
 u32 mask = 1 << chbit;

 switch (STMP3XXX_DMA_BUS(channel)) {
 case 129:
  stmp3xxx_setl(mask, REGS_APBH_BASE + HW_APBH_CTRL0);
  break;
 case 128:
  stmp3xxx_setl(mask, REGS_APBX_BASE + HW_APBX_CHANNEL_CTRL);
  break;
 }
}

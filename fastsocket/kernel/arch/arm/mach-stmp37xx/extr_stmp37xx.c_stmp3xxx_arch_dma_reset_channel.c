
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BP_APBH_CTRL0_RESET_CHANNEL ;
 unsigned int BP_APBX_CTRL0_RESET_CHANNEL ;
 scalar_t__ HW_APBH_CTRL0 ;
 scalar_t__ HW_APBX_CTRL0 ;
 scalar_t__ REGS_APBH_BASE ;
 scalar_t__ REGS_APBX_BASE ;


 int STMP3XXX_DMA_BUS (int) ;
 int STMP3XXX_DMA_CHANNEL (int) ;
 unsigned int __raw_readl (scalar_t__) ;
 int cpu_relax () ;
 int stmp3xxx_setl (unsigned int,scalar_t__) ;

void stmp3xxx_arch_dma_reset_channel(int channel)
{
 unsigned chbit = 1 << STMP3XXX_DMA_CHANNEL(channel);

 switch (STMP3XXX_DMA_BUS(channel)) {
 case 129:

  stmp3xxx_setl(chbit << BP_APBH_CTRL0_RESET_CHANNEL,
   REGS_APBH_BASE + HW_APBH_CTRL0);
  while (__raw_readl(REGS_APBH_BASE + HW_APBH_CTRL0) &
         (chbit << BP_APBH_CTRL0_RESET_CHANNEL))
    cpu_relax();
  break;

 case 128:
  stmp3xxx_setl(chbit << BP_APBX_CTRL0_RESET_CHANNEL,
   REGS_APBX_BASE + HW_APBX_CTRL0);
  while (__raw_readl(REGS_APBX_BASE + HW_APBX_CTRL0) &
         (chbit << BP_APBX_CTRL0_RESET_CHANNEL))
    cpu_relax();
  break;
 }
}

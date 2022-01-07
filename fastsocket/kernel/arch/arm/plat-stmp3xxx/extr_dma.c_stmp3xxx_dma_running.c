
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BM_APBH_CHn_SEMA_PHORE ;
 int BM_APBX_CHn_SEMA_PHORE ;
 int BUG () ;
 scalar_t__ HW_APBH_CHn_SEMA ;
 scalar_t__ HW_APBX_CHn_SEMA ;
 scalar_t__ REGS_APBH_BASE ;
 scalar_t__ REGS_APBX_BASE ;


 int STMP3XXX_DMA_BUS (int) ;
 int STMP3XXX_DMA_CHANNEL (int) ;
 int __raw_readl (int ) ;

int stmp3xxx_dma_running(int channel)
{
 switch (STMP3XXX_DMA_BUS(channel)) {
 case 129:
  return (__raw_readl(REGS_APBH_BASE + HW_APBH_CHn_SEMA +
   0x70 * STMP3XXX_DMA_CHANNEL(channel))) &
       BM_APBH_CHn_SEMA_PHORE;

 case 128:
  return (__raw_readl(REGS_APBX_BASE + HW_APBX_CHn_SEMA +
   0x70 * STMP3XXX_DMA_CHANNEL(channel))) &
       BM_APBX_CHn_SEMA_PHORE;
 default:
  BUG();
  return 0;
 }
}

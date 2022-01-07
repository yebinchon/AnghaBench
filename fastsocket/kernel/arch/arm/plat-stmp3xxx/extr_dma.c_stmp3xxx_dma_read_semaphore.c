
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BM_APBH_CHn_SEMA_PHORE ;
 int BM_APBX_CHn_SEMA_PHORE ;
 int BP_APBH_CHn_SEMA_PHORE ;
 int BP_APBX_CHn_SEMA_PHORE ;
 int BUG () ;
 scalar_t__ HW_APBH_CHn_SEMA ;
 scalar_t__ HW_APBX_CHn_SEMA ;
 scalar_t__ REGS_APBH_BASE ;
 scalar_t__ REGS_APBX_BASE ;


 int STMP3XXX_DMA_BUS (int) ;
 int STMP3XXX_DMA_CHANNEL (int) ;
 int __raw_readl (int ) ;

int stmp3xxx_dma_read_semaphore(int channel)
{
 int sem = -1;

 switch (STMP3XXX_DMA_BUS(channel)) {
 case 129:
  sem = __raw_readl(REGS_APBH_BASE + HW_APBH_CHn_SEMA +
    STMP3XXX_DMA_CHANNEL(channel) * 0x70);
  sem &= BM_APBH_CHn_SEMA_PHORE;
  sem >>= BP_APBH_CHn_SEMA_PHORE;
  break;

 case 128:
  sem = __raw_readl(REGS_APBX_BASE + HW_APBX_CHn_SEMA +
    STMP3XXX_DMA_CHANNEL(channel) * 0x70);
  sem &= BM_APBX_CHn_SEMA_PHORE;
  sem >>= BP_APBX_CHn_SEMA_PHORE;
  break;
 default:
  BUG();
 }
 return sem;
}

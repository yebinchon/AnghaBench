
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sense_interrupt_reg; } ;
struct ipr_ioa_cfg {TYPE_1__ regs; } ;


 int EIO ;
 int volatile IPR_PCII_IO_DEBUG_ACKNOWLEDGE ;
 int MAX_UDELAY_MS ;
 int mdelay (int) ;
 int readl (int ) ;
 int udelay (int) ;

__attribute__((used)) static int ipr_wait_iodbg_ack(struct ipr_ioa_cfg *ioa_cfg, int max_delay)
{
 volatile u32 pcii_reg;
 int delay = 1;


 while (delay < max_delay) {
  pcii_reg = readl(ioa_cfg->regs.sense_interrupt_reg);

  if (pcii_reg & IPR_PCII_IO_DEBUG_ACKNOWLEDGE)
   return 0;


  if ((delay / 1000) > MAX_UDELAY_MS)
   mdelay(delay / 1000);
  else
   udelay(delay);

  delay += delay;
 }
 return -EIO;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AU1000_SRC_CLK ;
 unsigned long CONFIG_SOC_AU1000_FREQUENCY ;
 int SYS_CPUPLL ;
 int SYS_POWERCTRL ;
 scalar_t__ au1xxx_cpu_has_pll_wo () ;
 int au_readl (int ) ;
 unsigned long mips_hpt_frequency ;
 int set_au1x00_speed (unsigned long) ;
 int set_au1x00_uart_baud_base (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int time_lock ;

unsigned long au1xxx_calc_clock(void)
{
 unsigned long cpu_speed;
 unsigned long flags;

 spin_lock_irqsave(&time_lock, flags);






 if (au1xxx_cpu_has_pll_wo())



  cpu_speed = 396000000;

 else
  cpu_speed = (au_readl(SYS_CPUPLL) & 0x0000003f) * AU1000_SRC_CLK;


 mips_hpt_frequency = cpu_speed;

 set_au1x00_uart_baud_base(cpu_speed / (2 * ((int)(au_readl(SYS_POWERCTRL)
         & 0x03) + 2) * 16));

 spin_unlock_irqrestore(&time_lock, flags);

 set_au1x00_speed(cpu_speed);

 return cpu_speed;
}

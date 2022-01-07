
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HW_ICOLL_LEVELACK ;
 scalar_t__ HW_ICOLL_PRIORITYn ;
 scalar_t__ HW_ICOLL_STAT ;
 scalar_t__ REGS_ICOLL_BASE ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int stmp3xxx_clearl (int,scalar_t__) ;

__attribute__((used)) static void stmp37xx_ack_irq(unsigned int irq)
{

 stmp3xxx_clearl(0x04 << ((irq % 4) * 8),
  REGS_ICOLL_BASE + HW_ICOLL_PRIORITYn + irq / 4 * 0x10);


 __raw_writel(1, REGS_ICOLL_BASE + HW_ICOLL_LEVELACK);


 (void)__raw_readl(REGS_ICOLL_BASE + HW_ICOLL_STAT);
}

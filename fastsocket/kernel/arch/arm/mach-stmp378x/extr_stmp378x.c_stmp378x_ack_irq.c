
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HW_ICOLL_LEVELACK ;
 scalar_t__ HW_ICOLL_STAT ;
 scalar_t__ HW_ICOLL_VECTOR ;
 scalar_t__ REGS_ICOLL_BASE ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;

__attribute__((used)) static void stmp378x_ack_irq(unsigned int irq)
{

 __raw_writel(0, REGS_ICOLL_BASE + HW_ICOLL_VECTOR);


 __raw_writel(0x01 ,
   REGS_ICOLL_BASE + HW_ICOLL_LEVELACK);


 (void)__raw_readl(REGS_ICOLL_BASE + HW_ICOLL_STAT);
}

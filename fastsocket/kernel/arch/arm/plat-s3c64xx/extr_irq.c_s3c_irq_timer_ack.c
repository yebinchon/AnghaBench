
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned int IRQ_TIMER0 ;
 int S3C64XX_TINT_CSTAT ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void s3c_irq_timer_ack(unsigned int irq)
{
 u32 reg = __raw_readl(S3C64XX_TINT_CSTAT);

 reg &= 0x1f;
 reg |= (1 << 5) << (irq - IRQ_TIMER0);
 __raw_writel(reg, S3C64XX_TINT_CSTAT);
}

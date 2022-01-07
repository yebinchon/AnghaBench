
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_AIC_EOSCR ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void nuc900_irq_ack(unsigned int irq)
{
 __raw_writel(0x01, REG_AIC_EOSCR);
}

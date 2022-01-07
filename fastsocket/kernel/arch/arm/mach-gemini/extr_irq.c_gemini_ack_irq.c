
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEMINI_INTERRUPT_BASE ;
 int IO_ADDRESS (int ) ;
 int IRQ_CLEAR (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static void gemini_ack_irq(unsigned int irq)
{
 __raw_writel(1 << irq, IRQ_CLEAR(IO_ADDRESS(GEMINI_INTERRUPT_BASE)));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_TIMER3 ;
 int s3c_irq_demux_timer (unsigned int,int ) ;

__attribute__((used)) static void s3c_irq_demux_timer3(unsigned int irq, struct irq_desc *desc)
{
 s3c_irq_demux_timer(irq, IRQ_TIMER3);
}

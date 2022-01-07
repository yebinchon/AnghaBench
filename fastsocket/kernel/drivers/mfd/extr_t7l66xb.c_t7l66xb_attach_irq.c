
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t7l66xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 int IRQF_PROBE ;
 int IRQF_VALID ;
 int IRQ_TYPE_EDGE_FALLING ;
 unsigned int T7L66XB_NR_IRQS ;
 int handle_level_irq ;
 struct t7l66xb* platform_get_drvdata (struct platform_device*) ;
 int set_irq_chained_handler (int ,int ) ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_chip_data (unsigned int,struct t7l66xb*) ;
 int set_irq_data (int ,struct t7l66xb*) ;
 int set_irq_flags (unsigned int,int) ;
 int set_irq_handler (unsigned int,int ) ;
 int set_irq_type (int ,int ) ;
 int t7l66xb_chip ;
 int t7l66xb_irq ;

__attribute__((used)) static void t7l66xb_attach_irq(struct platform_device *dev)
{
 struct t7l66xb *t7l66xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 irq_base = t7l66xb->irq_base;

 for (irq = irq_base; irq < irq_base + T7L66XB_NR_IRQS; irq++) {
  set_irq_chip(irq, &t7l66xb_chip);
  set_irq_chip_data(irq, t7l66xb);
  set_irq_handler(irq, handle_level_irq);



 }

 set_irq_type(t7l66xb->irq, IRQ_TYPE_EDGE_FALLING);
 set_irq_data(t7l66xb->irq, t7l66xb);
 set_irq_chained_handler(t7l66xb->irq, t7l66xb_irq);
}

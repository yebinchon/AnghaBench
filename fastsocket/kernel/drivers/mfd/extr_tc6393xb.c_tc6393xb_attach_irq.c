
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6393xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 int IRQF_PROBE ;
 int IRQF_VALID ;
 int IRQ_TYPE_EDGE_FALLING ;
 unsigned int TC6393XB_NR_IRQS ;
 int handle_edge_irq ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;
 int set_irq_chained_handler (int ,int ) ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_chip_data (unsigned int,struct tc6393xb*) ;
 int set_irq_data (int ,struct tc6393xb*) ;
 int set_irq_flags (unsigned int,int) ;
 int set_irq_handler (unsigned int,int ) ;
 int set_irq_type (int ,int ) ;
 int tc6393xb_chip ;
 int tc6393xb_irq ;

__attribute__((used)) static void tc6393xb_attach_irq(struct platform_device *dev)
{
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 irq_base = tc6393xb->irq_base;

 for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
  set_irq_chip(irq, &tc6393xb_chip);
  set_irq_chip_data(irq, tc6393xb);
  set_irq_handler(irq, handle_edge_irq);
  set_irq_flags(irq, IRQF_VALID | IRQF_PROBE);
 }

 set_irq_type(tc6393xb->irq, IRQ_TYPE_EDGE_FALLING);
 set_irq_data(tc6393xb->irq, tc6393xb);
 set_irq_chained_handler(tc6393xb->irq, tc6393xb_irq);
}

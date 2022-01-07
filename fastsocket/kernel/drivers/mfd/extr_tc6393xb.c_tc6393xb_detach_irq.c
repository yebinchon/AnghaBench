
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6393xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 unsigned int TC6393XB_NR_IRQS ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;
 int set_irq_chained_handler (int ,int *) ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_chip_data (unsigned int,int *) ;
 int set_irq_data (int ,int *) ;
 int set_irq_flags (unsigned int,int ) ;

__attribute__((used)) static void tc6393xb_detach_irq(struct platform_device *dev)
{
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 set_irq_chained_handler(tc6393xb->irq, ((void*)0));
 set_irq_data(tc6393xb->irq, ((void*)0));

 irq_base = tc6393xb->irq_base;

 for (irq = irq_base; irq < irq_base + TC6393XB_NR_IRQS; irq++) {
  set_irq_flags(irq, 0);
  set_irq_chip(irq, ((void*)0));
  set_irq_chip_data(irq, ((void*)0));
 }
}

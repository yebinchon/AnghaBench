
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t7l66xb {unsigned int irq_base; int irq; } ;
struct platform_device {int dummy; } ;


 unsigned int T7L66XB_NR_IRQS ;
 struct t7l66xb* platform_get_drvdata (struct platform_device*) ;
 int set_irq_chained_handler (int ,int *) ;
 int set_irq_chip (unsigned int,int *) ;
 int set_irq_chip_data (unsigned int,int *) ;
 int set_irq_data (int ,int *) ;
 int set_irq_flags (unsigned int,int ) ;

__attribute__((used)) static void t7l66xb_detach_irq(struct platform_device *dev)
{
 struct t7l66xb *t7l66xb = platform_get_drvdata(dev);
 unsigned int irq, irq_base;

 irq_base = t7l66xb->irq_base;

 set_irq_chained_handler(t7l66xb->irq, ((void*)0));
 set_irq_data(t7l66xb->irq, ((void*)0));

 for (irq = irq_base; irq < irq_base + T7L66XB_NR_IRQS; irq++) {



  set_irq_chip(irq, ((void*)0));
  set_irq_chip_data(irq, ((void*)0));
 }
}

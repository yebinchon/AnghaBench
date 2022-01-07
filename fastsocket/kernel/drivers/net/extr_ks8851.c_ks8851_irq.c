
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int irq_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t ks8851_irq(int irq, void *pw)
{
 struct ks8851_net *ks = pw;

 disable_irq_nosync(irq);
 schedule_work(&ks->irq_work);
 return IRQ_HANDLED;
}

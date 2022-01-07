
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menelaus_chip {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t menelaus_irq(int irq, void *_menelaus)
{
 struct menelaus_chip *menelaus = _menelaus;

 disable_irq_nosync(irq);
 (void)schedule_work(&menelaus->work);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lm8323_chip {int work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t lm8323_irq(int irq, void *data)
{
 struct lm8323_chip *lm = data;

 schedule_work(&lm->work);

 return IRQ_HANDLED;
}

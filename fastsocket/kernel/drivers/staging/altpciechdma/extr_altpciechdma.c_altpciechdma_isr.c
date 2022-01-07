
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ape_dev {int irq_count; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;

__attribute__((used)) static irqreturn_t altpciechdma_isr(int irq, void *dev_id)
{
 struct ape_dev *ape = (struct ape_dev *)dev_id;
 if (!ape)
  return IRQ_NONE;
 ape->irq_count++;
 return IRQ_HANDLED;
}

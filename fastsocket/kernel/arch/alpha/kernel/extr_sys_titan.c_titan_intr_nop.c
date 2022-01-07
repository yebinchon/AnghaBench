
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;

__attribute__((used)) static irqreturn_t
titan_intr_nop(int irq, void *dev_id)
{




       return IRQ_HANDLED;
}

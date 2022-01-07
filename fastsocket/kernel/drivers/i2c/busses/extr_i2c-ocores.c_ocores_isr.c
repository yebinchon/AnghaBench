
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocores_i2c {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int ocores_process (struct ocores_i2c*) ;

__attribute__((used)) static irqreturn_t ocores_isr(int irq, void *dev_id)
{
 struct ocores_i2c *i2c = dev_id;

 ocores_process(i2c);

 return IRQ_HANDLED;
}

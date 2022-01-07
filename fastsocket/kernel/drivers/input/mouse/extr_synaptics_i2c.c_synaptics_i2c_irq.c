
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synaptics_i2c {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int synaptics_i2c_reschedule_work (struct synaptics_i2c*,int ) ;

__attribute__((used)) static irqreturn_t synaptics_i2c_irq(int irq, void *dev_id)
{
 struct synaptics_i2c *touch = dev_id;

 synaptics_i2c_reschedule_work(touch, 0);

 return IRQ_HANDLED;
}

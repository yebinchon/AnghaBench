
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bbc_i2c_bus {int wq; scalar_t__ i2c_control_regs; scalar_t__ waiting; } ;
typedef int irqreturn_t ;


 int I2C_PCF_PIN ;
 int IRQ_HANDLED ;
 int readb (scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t bbc_i2c_interrupt(int irq, void *dev_id)
{
 struct bbc_i2c_bus *bp = dev_id;




 if (bp->waiting &&
     !(readb(bp->i2c_control_regs + 0x0) & I2C_PCF_PIN))
  wake_up_interruptible(&bp->wq);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_algo_iop3xx_data {int waitq; int SR_received; scalar_t__ ioaddr; int SR_enabled; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SR_OFFSET ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t
iop3xx_i2c_irq_handler(int this_irq, void *dev_id)
{
 struct i2c_algo_iop3xx_data *iop3xx_adap = dev_id;
 u32 sr = __raw_readl(iop3xx_adap->ioaddr + SR_OFFSET);

 if ((sr &= iop3xx_adap->SR_enabled)) {
  __raw_writel(sr, iop3xx_adap->ioaddr + SR_OFFSET);
  iop3xx_adap->SR_received |= sr;
  wake_up_interruptible(&iop3xx_adap->waitq);
 }
 return IRQ_HANDLED;
}

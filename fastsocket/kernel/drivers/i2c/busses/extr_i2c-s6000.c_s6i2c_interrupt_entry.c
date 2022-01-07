
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6i2c_if {int lock; int timeout_timer; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int S6_I2C_INTR_ACTIVITY ;
 int S6_I2C_INTR_GENCALL ;
 int S6_I2C_INTR_RDREQ ;
 int S6_I2C_INTR_RXDONE ;
 int S6_I2C_INTR_RXFULL ;
 int S6_I2C_INTR_RXOVER ;
 int S6_I2C_INTR_RXUNDER ;
 int S6_I2C_INTR_STARTDET ;
 int S6_I2C_INTR_STOPDET ;
 int S6_I2C_INTR_TXABRT ;
 int S6_I2C_INTR_TXEMPTY ;
 int S6_I2C_INTR_TXOVER ;
 int S6_I2C_STATUS ;
 int del_timer (int *) ;
 int i2c_rd16 (struct s6i2c_if*,int ) ;
 int s6i2c_handle_interrupt (struct s6i2c_if*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t s6i2c_interrupt_entry(int irq, void *dev_id)
{
 struct s6i2c_if *iface = dev_id;
 if (!(i2c_rd16(iface, S6_I2C_STATUS) & ((1 << S6_I2C_INTR_RXUNDER)
           | (1 << S6_I2C_INTR_RXOVER)
           | (1 << S6_I2C_INTR_RXFULL)
           | (1 << S6_I2C_INTR_TXOVER)
           | (1 << S6_I2C_INTR_TXEMPTY)
           | (1 << S6_I2C_INTR_RDREQ)
           | (1 << S6_I2C_INTR_TXABRT)
           | (1 << S6_I2C_INTR_RXDONE)
           | (1 << S6_I2C_INTR_ACTIVITY)
           | (1 << S6_I2C_INTR_STOPDET)
           | (1 << S6_I2C_INTR_STARTDET)
           | (1 << S6_I2C_INTR_GENCALL))))
  return IRQ_NONE;

 spin_lock(&iface->lock);
 del_timer(&iface->timeout_timer);
 s6i2c_handle_interrupt(iface);
 spin_unlock(&iface->lock);
 return IRQ_HANDLED;
}

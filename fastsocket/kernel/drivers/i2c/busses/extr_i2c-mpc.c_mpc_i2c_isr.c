
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc_i2c {int interrupt; int queue; scalar_t__ base; } ;
typedef int irqreturn_t ;


 int CSR_MIF ;
 int IRQ_HANDLED ;
 scalar_t__ MPC_I2C_SR ;
 int readb (scalar_t__) ;
 int wake_up (int *) ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t mpc_i2c_isr(int irq, void *dev_id)
{
 struct mpc_i2c *i2c = dev_id;
 if (readb(i2c->base + MPC_I2C_SR) & CSR_MIF) {

  i2c->interrupt = readb(i2c->base + MPC_I2C_SR);
  writeb(0, i2c->base + MPC_I2C_SR);
  wake_up(&i2c->queue);
 }
 return IRQ_HANDLED;
}

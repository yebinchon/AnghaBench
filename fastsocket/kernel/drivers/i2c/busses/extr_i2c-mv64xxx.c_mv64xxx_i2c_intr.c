
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv64xxx_i2c_data {int lock; scalar_t__ reg_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ MV64XXX_I2C_REG_CONTROL ;
 int MV64XXX_I2C_REG_CONTROL_IFLG ;
 scalar_t__ MV64XXX_I2C_REG_STATUS ;
 int mv64xxx_i2c_do_action (struct mv64xxx_i2c_data*) ;
 int mv64xxx_i2c_fsm (struct mv64xxx_i2c_data*,int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t
mv64xxx_i2c_intr(int irq, void *dev_id)
{
 struct mv64xxx_i2c_data *drv_data = dev_id;
 unsigned long flags;
 u32 status;
 irqreturn_t rc = IRQ_NONE;

 spin_lock_irqsave(&drv_data->lock, flags);
 while (readl(drv_data->reg_base + MV64XXX_I2C_REG_CONTROL) &
      MV64XXX_I2C_REG_CONTROL_IFLG) {
  status = readl(drv_data->reg_base + MV64XXX_I2C_REG_STATUS);
  mv64xxx_i2c_fsm(drv_data, status);
  mv64xxx_i2c_do_action(drv_data);
  rc = IRQ_HANDLED;
 }
 spin_unlock_irqrestore(&drv_data->lock, flags);

 return rc;
}

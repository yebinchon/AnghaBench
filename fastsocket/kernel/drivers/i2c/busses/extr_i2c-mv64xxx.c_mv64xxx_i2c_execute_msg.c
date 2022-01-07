
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mv64xxx_i2c_data {int block; int rc; int lock; int state; int action; int bytes_left; TYPE_1__* msg; } ;
struct i2c_msg {int flags; } ;
struct TYPE_2__ {int flags; } ;


 int I2C_M_NOSTART ;
 int I2C_M_RD ;
 int MV64XXX_I2C_ACTION_CONTINUE ;
 int MV64XXX_I2C_ACTION_SEND_DATA ;
 int MV64XXX_I2C_ACTION_SEND_START ;
 int MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK ;
 int MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA ;
 int MV64XXX_I2C_STATE_WAITING_FOR_START_COND ;
 int mv64xxx_i2c_do_action (struct mv64xxx_i2c_data*) ;
 int mv64xxx_i2c_prepare_for_io (struct mv64xxx_i2c_data*,struct i2c_msg*) ;
 int mv64xxx_i2c_wait_for_completion (struct mv64xxx_i2c_data*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
mv64xxx_i2c_execute_msg(struct mv64xxx_i2c_data *drv_data, struct i2c_msg *msg)
{
 unsigned long flags;

 spin_lock_irqsave(&drv_data->lock, flags);
 mv64xxx_i2c_prepare_for_io(drv_data, msg);

 if (unlikely(msg->flags & I2C_M_NOSTART)) {
  if (drv_data->msg->flags & I2C_M_RD) {

   drv_data->action = MV64XXX_I2C_ACTION_CONTINUE;
   drv_data->state =
    MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_DATA;
  } else {
   drv_data->action = MV64XXX_I2C_ACTION_SEND_DATA;
   drv_data->state =
    MV64XXX_I2C_STATE_WAITING_FOR_SLAVE_ACK;
   drv_data->bytes_left--;
  }
 } else {
  drv_data->action = MV64XXX_I2C_ACTION_SEND_START;
  drv_data->state = MV64XXX_I2C_STATE_WAITING_FOR_START_COND;
 }

 drv_data->block = 1;
 mv64xxx_i2c_do_action(drv_data);
 spin_unlock_irqrestore(&drv_data->lock, flags);

 mv64xxx_i2c_wait_for_completion(drv_data);
 return drv_data->rc;
}

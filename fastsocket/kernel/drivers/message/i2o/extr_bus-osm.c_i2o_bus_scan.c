
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void** head; } ;
struct i2o_message {TYPE_2__ u; } ;
struct TYPE_3__ {int tid; } ;
struct i2o_device {int iop; TYPE_1__ lct_data; } ;


 int ETIMEDOUT ;
 int FIVE_WORD_MSG_SIZE ;
 int HOST_TID ;
 int I2O_CMD_BUS_SCAN ;
 int I2O_TIMEOUT_MESSAGE_GET ;
 scalar_t__ IS_ERR (struct i2o_message*) ;
 int SGL_OFFSET_0 ;
 void* cpu_to_le32 (int) ;
 struct i2o_message* i2o_msg_get_wait (int ,int ) ;
 int i2o_msg_post_wait (int ,struct i2o_message*,int) ;

__attribute__((used)) static int i2o_bus_scan(struct i2o_device *dev)
{
 struct i2o_message *msg;

 msg = i2o_msg_get_wait(dev->iop, I2O_TIMEOUT_MESSAGE_GET);
 if (IS_ERR(msg))
  return -ETIMEDOUT;

 msg->u.head[0] = cpu_to_le32(FIVE_WORD_MSG_SIZE | SGL_OFFSET_0);
 msg->u.head[1] =
     cpu_to_le32(I2O_CMD_BUS_SCAN << 24 | HOST_TID << 12 | dev->lct_data.
   tid);

 return i2o_msg_post_wait(dev->iop, msg, 60);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void** head; } ;
struct i2o_message {TYPE_1__ u; } ;
struct i2o_controller {int name; } ;


 int ADAPTER_TID ;
 int FOUR_WORD_MSG_SIZE ;
 int HOST_TID ;
 int I2O_CMD_ADAPTER_CLEAR ;
 int I2O_TIMEOUT_MESSAGE_GET ;
 scalar_t__ IS_ERR (struct i2o_message*) ;
 int PTR_ERR (struct i2o_message*) ;
 int SGL_OFFSET_0 ;
 void* cpu_to_le32 (int) ;
 int i2o_iop_enable_all () ;
 int i2o_iop_quiesce_all () ;
 struct i2o_message* i2o_msg_get_wait (struct i2o_controller*,int ) ;
 int i2o_msg_post_wait (struct i2o_controller*,struct i2o_message*,int) ;
 int osm_debug (char*,int ) ;
 int osm_info (char*,int ,int) ;

__attribute__((used)) static int i2o_iop_clear(struct i2o_controller *c)
{
 struct i2o_message *msg;
 int rc;

 msg = i2o_msg_get_wait(c, I2O_TIMEOUT_MESSAGE_GET);
 if (IS_ERR(msg))
  return PTR_ERR(msg);


 i2o_iop_quiesce_all();

 msg->u.head[0] = cpu_to_le32(FOUR_WORD_MSG_SIZE | SGL_OFFSET_0);
 msg->u.head[1] =
     cpu_to_le32(I2O_CMD_ADAPTER_CLEAR << 24 | HOST_TID << 12 |
   ADAPTER_TID);

 if ((rc = i2o_msg_post_wait(c, msg, 30)))
  osm_info("%s: Unable to clear (status=%#x).\n", c->name, -rc);
 else
  osm_debug("%s: Cleared.\n", c->name);


 i2o_iop_enable_all();

 return rc;
}

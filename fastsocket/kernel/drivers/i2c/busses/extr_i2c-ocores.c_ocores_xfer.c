
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocores_i2c {int nmsgs; scalar_t__ state; int wait; struct i2c_msg* msg; scalar_t__ pos; } ;
struct i2c_msg {int addr; int flags; } ;
struct i2c_adapter {int dummy; } ;


 int EIO ;
 int ETIMEDOUT ;
 int HZ ;
 int I2C_M_RD ;
 int OCI2C_CMD ;
 int OCI2C_CMD_START ;
 int OCI2C_DATA ;
 scalar_t__ STATE_DONE ;
 scalar_t__ STATE_ERROR ;
 scalar_t__ STATE_START ;
 struct ocores_i2c* i2c_get_adapdata (struct i2c_adapter*) ;
 int oc_setreg (struct ocores_i2c*,int ,int) ;
 scalar_t__ wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static int ocores_xfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
 struct ocores_i2c *i2c = i2c_get_adapdata(adap);

 i2c->msg = msgs;
 i2c->pos = 0;
 i2c->nmsgs = num;
 i2c->state = STATE_START;

 oc_setreg(i2c, OCI2C_DATA,
   (i2c->msg->addr << 1) |
   ((i2c->msg->flags & I2C_M_RD) ? 1:0));

 oc_setreg(i2c, OCI2C_CMD, OCI2C_CMD_START);

 if (wait_event_timeout(i2c->wait, (i2c->state == STATE_ERROR) ||
          (i2c->state == STATE_DONE), HZ))
  return (i2c->state == STATE_DONE) ? num : -EIO;
 else
  return -ETIMEDOUT;
}

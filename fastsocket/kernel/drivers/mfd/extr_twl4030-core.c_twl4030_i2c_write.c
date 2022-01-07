
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct twl4030_client {int xfer_lock; struct i2c_msg* xfer_msg; TYPE_1__* client; int address; } ;
struct i2c_msg {unsigned int len; size_t* buf; scalar_t__ flags; int addr; } ;
struct TYPE_4__ {int sid; size_t base; } ;
struct TYPE_3__ {int adapter; } ;


 int DRIVER_NAME ;
 int EPERM ;
 size_t TWL4030_MODULE_LAST ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int inuse ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int ,int) ;
 TYPE_2__* twl4030_map ;
 struct twl4030_client* twl4030_modules ;
 scalar_t__ unlikely (int) ;

int twl4030_i2c_write(u8 mod_no, u8 *value, u8 reg, unsigned num_bytes)
{
 int ret;
 int sid;
 struct twl4030_client *twl;
 struct i2c_msg *msg;

 if (unlikely(mod_no > TWL4030_MODULE_LAST)) {
  pr_err("%s: invalid module number %d\n", DRIVER_NAME, mod_no);
  return -EPERM;
 }
 sid = twl4030_map[mod_no].sid;
 twl = &twl4030_modules[sid];

 if (unlikely(!inuse)) {
  pr_err("%s: client %d is not initialized\n", DRIVER_NAME, sid);
  return -EPERM;
 }
 mutex_lock(&twl->xfer_lock);




 msg = &twl->xfer_msg[0];
 msg->addr = twl->address;
 msg->len = num_bytes + 1;
 msg->flags = 0;
 msg->buf = value;

 *value = twl4030_map[mod_no].base + reg;
 ret = i2c_transfer(twl->client->adapter, twl->xfer_msg, 1);
 mutex_unlock(&twl->xfer_lock);


 if (ret >= 0)
  ret = 0;
 return ret;
}

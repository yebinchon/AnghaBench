
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner_i2c_props {int adap; int addr; } ;
struct i2c_msg {char* buf; int len; int flags; int addr; } ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static inline int tuner_i2c_xfer_send(struct tuner_i2c_props *props, char *buf, int len)
{
 struct i2c_msg msg = { .addr = props->addr, .flags = 0,
          .buf = buf, .len = len };
 int ret = i2c_transfer(props->adap, &msg, 1);

 return (ret == 1) ? len : ret;
}

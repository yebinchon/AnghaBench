
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct isl6423_dev {TYPE_1__* config; struct i2c_adapter* i2c; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_2__ {int addr; } ;


 int FE_DEBUG ;
 int FE_ERROR ;
 int dprintk (int ,int,char*,int) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int isl6423_write(struct isl6423_dev *isl6423, u8 reg)
{
 struct i2c_adapter *i2c = isl6423->i2c;
 u8 addr = isl6423->config->addr;
 int err = 0;

 struct i2c_msg msg = { .addr = addr, .flags = 0, .buf = &reg, .len = 1 };

 dprintk(FE_DEBUG, 1, "write reg %02X", reg);
 err = i2c_transfer(i2c, &msg, 1);
 if (err < 0)
  goto exit;
 return 0;

exit:
 dprintk(FE_ERROR, 1, "I/O error <%d>", err);
 return err;
}

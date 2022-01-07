
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa7146_dev {struct av7110* ext_priv; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct av7110 {int i2c_adap; } ;


 int dprintk (int,char*,struct saa7146_dev*) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

__attribute__((used)) static int tuner_write(struct saa7146_dev *dev, u8 addr, u8 data [4])
{
 struct av7110 *av7110 = dev->ext_priv;
 struct i2c_msg msg = { .addr = addr, .flags = 0, .buf = data, .len = 4 };

 dprintk(4, "dev: %p\n", dev);

 if (1 != i2c_transfer(&av7110->i2c_adap, &msg, 1))
  return -1;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv6110x_state {int i2c; struct stv6110x_config* config; } ;
struct stv6110x_config {int addr; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;


 int EINVAL ;
 int EREMOTEIO ;
 int FE_ERROR ;
 int dprintk (int ,int,char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static int stv6110x_write_regs(struct stv6110x_state *stv6110x, int start, u8 data[], int len)
{
 int ret;
 const struct stv6110x_config *config = stv6110x->config;
 u8 buf[len + 1];
 struct i2c_msg msg = {
  .addr = config->addr,
  .flags = 0,
  .buf = buf,
  .len = len + 1
 };

 if (start + len > 8)
  return -EINVAL;

 buf[0] = start;
 memcpy(&buf[1], data, len);

 ret = i2c_transfer(stv6110x->i2c, &msg, 1);
 if (ret != 1) {
  dprintk(FE_ERROR, 1, "I/O Error");
  return -EREMOTEIO;
 }

 return 0;
}

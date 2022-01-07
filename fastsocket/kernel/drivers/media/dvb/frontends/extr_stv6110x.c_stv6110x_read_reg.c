
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stv6110x_state {int i2c; struct stv6110x_config* config; } ;
struct stv6110x_config {int addr; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;


 int EREMOTEIO ;
 int FE_ERROR ;
 int I2C_M_RD ;
 int dprintk (int ,int,char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int stv6110x_read_reg(struct stv6110x_state *stv6110x, u8 reg, u8 *data)
{
 int ret;
 const struct stv6110x_config *config = stv6110x->config;
 u8 b0[] = { reg };
 u8 b1[] = { 0 };
 struct i2c_msg msg[] = {
  { .addr = config->addr, .flags = 0, .buf = b0, .len = 1 },
  { .addr = config->addr, .flags = I2C_M_RD, .buf = b1, .len = 1 }
 };

 ret = i2c_transfer(stv6110x->i2c, msg, 2);
 if (ret != 2) {
  dprintk(FE_ERROR, 1, "I/O Error");
  return -EREMOTEIO;
 }
 *data = b1[0];

 return 0;
}

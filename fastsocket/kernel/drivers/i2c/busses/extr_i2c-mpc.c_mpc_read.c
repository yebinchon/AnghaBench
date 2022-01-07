
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {unsigned int timeout; } ;
struct mpc_i2c {scalar_t__ base; TYPE_1__ adap; } ;


 int CCR_MEN ;
 int CCR_MIEN ;
 int CCR_MSTA ;
 int CCR_MTX ;
 int CCR_RSTA ;
 int CCR_TXAK ;
 scalar_t__ MPC_I2C_DR ;
 int i2c_wait (struct mpc_i2c*,unsigned int,int) ;
 int readb (scalar_t__) ;
 int writeb (int,scalar_t__) ;
 int writeccr (struct mpc_i2c*,int) ;

__attribute__((used)) static int mpc_read(struct mpc_i2c *i2c, int target,
      u8 *data, int length, int restart)
{
 unsigned timeout = i2c->adap.timeout;
 int i, result;
 u32 flags = restart ? CCR_RSTA : 0;


 writeccr(i2c, CCR_MIEN | CCR_MEN | CCR_MSTA | CCR_MTX | flags);

 writeb((target << 1) | 1, i2c->base + MPC_I2C_DR);

 result = i2c_wait(i2c, timeout, 1);
 if (result < 0)
  return result;

 if (length) {
  if (length == 1)
   writeccr(i2c, CCR_MIEN | CCR_MEN | CCR_MSTA | CCR_TXAK);
  else
   writeccr(i2c, CCR_MIEN | CCR_MEN | CCR_MSTA);

  readb(i2c->base + MPC_I2C_DR);
 }

 for (i = 0; i < length; i++) {
  result = i2c_wait(i2c, timeout, 0);
  if (result < 0)
   return result;


  if (i == length - 2)
   writeccr(i2c, CCR_MIEN | CCR_MEN | CCR_MSTA | CCR_TXAK);

  if (i == length - 1)
   writeccr(i2c, CCR_MIEN | CCR_MEN | CCR_MSTA | CCR_MTX);
  data[i] = readb(i2c->base + MPC_I2C_DR);
 }

 return length;
}

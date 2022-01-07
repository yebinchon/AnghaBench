
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tda18218_priv {int i2c; TYPE_1__* cfg; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int i2c_wr_max; int i2c_address; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int*,int*,int) ;
 int warn (char*,int,int,int) ;

__attribute__((used)) static int tda18218_wr_regs(struct tda18218_priv *priv, u8 reg, u8 *val, u8 len)
{
 int ret = 0;
 u8 buf[1+len], quotient, remainder, i, msg_len, msg_len_max;
 struct i2c_msg msg[1] = {
  {
   .addr = priv->cfg->i2c_address,
   .flags = 0,
   .buf = buf,
  }
 };

 msg_len_max = priv->cfg->i2c_wr_max - 1;
 quotient = len / msg_len_max;
 remainder = len % msg_len_max;
 msg_len = msg_len_max;
 for (i = 0; (i <= quotient && remainder); i++) {
  if (i == quotient)
   msg_len = remainder;

  msg[0].len = msg_len + 1;
  buf[0] = reg + i * msg_len_max;
  memcpy(&buf[1], &val[i * msg_len_max], msg_len);

  ret = i2c_transfer(priv->i2c, msg, 1);
  if (ret != 1)
   break;
 }

 if (ret == 1) {
  ret = 0;
 } else {
  warn("i2c wr failed ret:%d reg:%02x len:%d", ret, reg, len);
  ret = -EREMOTEIO;
 }

 return ret;
}

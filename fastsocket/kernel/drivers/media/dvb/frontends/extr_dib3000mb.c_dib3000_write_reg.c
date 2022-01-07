
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;
struct dib3000_state {int i2c; TYPE_1__ config; } ;


 int EREMOTEIO ;
 int deb_i2c (char*,int,int,int,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int dib3000_write_reg(struct dib3000_state *state, u16 reg, u16 val)
{
 u8 b[] = {
  (reg >> 8) & 0xff, reg & 0xff,
  (val >> 8) & 0xff, val & 0xff,
 };
 struct i2c_msg msg[] = {
  { .addr = state->config.demod_address, .flags = 0, .buf = b, .len = 4 }
 };
 deb_i2c("writing i2c bus (reg: %5d 0x%04x, val: %5d 0x%04x)\n",reg,reg,val,val);

 return i2c_transfer(state->i2c,msg, 1) != 1 ? -EREMOTEIO : 0;
}

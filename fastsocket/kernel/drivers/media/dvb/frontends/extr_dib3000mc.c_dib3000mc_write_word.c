
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dib3000mc_state {int i2c_addr; int i2c_adap; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int dib3000mc_write_word(struct dib3000mc_state *state, u16 reg, u16 val)
{
 u8 b[4] = {
  (reg >> 8) & 0xff, reg & 0xff,
  (val >> 8) & 0xff, val & 0xff,
 };
 struct i2c_msg msg = {
  .addr = state->i2c_addr >> 1, .flags = 0, .buf = b, .len = 4
 };
 return i2c_transfer(state->i2c_adap, &msg, 1) != 1 ? -EREMOTEIO : 0;
}

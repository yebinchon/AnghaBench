
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dib3000mc_state {int i2c_addr; int i2c_adap; } ;


 int I2C_M_RD ;
 int dprintk (char*,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static u16 dib3000mc_read_word(struct dib3000mc_state *state, u16 reg)
{
 u8 wb[2] = { (reg >> 8) | 0x80, reg & 0xff };
 u8 rb[2];
 struct i2c_msg msg[2] = {
  { .addr = state->i2c_addr >> 1, .flags = 0, .buf = wb, .len = 2 },
  { .addr = state->i2c_addr >> 1, .flags = I2C_M_RD, .buf = rb, .len = 2 },
 };

 if (i2c_transfer(state->i2c_adap, msg, 2) != 2)
  dprintk("i2c read error on %d\n",reg);

 return (rb[0] << 8) | rb[1];
}

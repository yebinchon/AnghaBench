
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wbuf ;
typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int demod_address; } ;
struct jdvbt90502_state {int i2c; TYPE_1__ config; } ;
struct i2c_msg {int* buf; int len; scalar_t__ flags; int addr; } ;


 int EREMOTEIO ;
 scalar_t__ I2C_M_RD ;
 int deb_fe (char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int jdvbt90502_reg_read(struct jdvbt90502_state *state,
          const u16 reg, u8 *buf, const size_t count)
{
 int ret;
 u8 wbuf[3];
 struct i2c_msg msg[2];

 wbuf[0] = reg & 0xFF;
 wbuf[1] = 0;
 wbuf[2] = reg >> 8;

 msg[0].addr = state->config.demod_address;
 msg[0].flags = 0;
 msg[0].buf = wbuf;
 msg[0].len = sizeof(wbuf);

 msg[1].addr = msg[0].addr;
 msg[1].flags = I2C_M_RD;
 msg[1].buf = buf;
 msg[1].len = count;

 ret = i2c_transfer(state->i2c, msg, 2);
 if (ret != 2) {
  deb_fe(" reg read failed.\n");
  return -EREMOTEIO;
 }
 return 0;
}

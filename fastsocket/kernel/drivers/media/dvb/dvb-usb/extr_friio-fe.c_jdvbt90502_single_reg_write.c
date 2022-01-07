
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wbuf ;
typedef int u8 ;
struct TYPE_2__ {int demod_address; } ;
struct jdvbt90502_state {int i2c; TYPE_1__ config; } ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;


 int EREMOTEIO ;
 int deb_fe (char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int jdvbt90502_single_reg_write(struct jdvbt90502_state *state,
           const u8 reg, const u8 val)
{
 struct i2c_msg msg;
 u8 wbuf[2];

 wbuf[0] = reg;
 wbuf[1] = val;

 msg.addr = state->config.demod_address;
 msg.flags = 0;
 msg.buf = wbuf;
 msg.len = sizeof(wbuf);

 if (i2c_transfer(state->i2c, &msg, 1) != 1) {
  deb_fe(" reg write failed.");
  return -EREMOTEIO;
 }
 return 0;
}

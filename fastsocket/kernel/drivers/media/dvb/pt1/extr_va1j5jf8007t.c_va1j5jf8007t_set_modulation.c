
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct va1j5jf8007t_state {int adap; TYPE_1__* config; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
typedef int buf ;
struct TYPE_2__ {int demod_address; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int va1j5jf8007t_set_modulation(struct va1j5jf8007t_state *state)
{
 u8 buf[2];
 struct i2c_msg msg;

 buf[0] = 0x01;
 buf[1] = 0x40;

 msg.addr = state->config->demod_address;
 msg.flags = 0;
 msg.len = sizeof(buf);
 msg.buf = buf;

 if (i2c_transfer(state->adap, &msg, 1) != 1)
  return -EREMOTEIO;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int frequency; } ;
struct TYPE_5__ {TYPE_1__ dtv_property_cache; } ;
struct va1j5jf8007t_state {int adap; TYPE_3__* config; TYPE_2__ fe; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
typedef int buf ;
struct TYPE_6__ {int demod_address; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int va1j5jf8007t_lookup_cb (int) ;

__attribute__((used)) static int va1j5jf8007t_set_frequency(struct va1j5jf8007t_state *state)
{
 u32 frequency;
 u16 word;
 u8 buf[6];
 struct i2c_msg msg;

 frequency = state->fe.dtv_property_cache.frequency;

 word = (frequency + 71428) / 142857 + 399;
 buf[0] = 0xfe;
 buf[1] = 0xc2;
 buf[2] = word >> 8;
 buf[3] = word;
 buf[4] = 0x80;
 buf[5] = va1j5jf8007t_lookup_cb(frequency);

 msg.addr = state->config->demod_address;
 msg.flags = 0;
 msg.len = sizeof(buf);
 msg.buf = buf;

 if (i2c_transfer(state->adap, &msg, 1) != 1)
  return -EREMOTEIO;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct va1j5jf8007s_state {int adap; TYPE_1__* config; } ;
struct i2c_msg {int len; int * buf; scalar_t__ flags; int addr; } ;
typedef int buf ;
struct TYPE_2__ {int frequency; int demod_address; } ;


 int ARRAY_SIZE (int **) ;
 int EINVAL ;
 int EREMOTEIO ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int *,int const*,int) ;
 int ** va1j5jf8007s_20mhz_prepare_bufs ;
 int ** va1j5jf8007s_25mhz_prepare_bufs ;

__attribute__((used)) static int va1j5jf8007s_prepare_2(struct va1j5jf8007s_state *state)
{
 const u8 (*bufs)[2];
 int size;
 u8 addr;
 u8 buf[2];
 struct i2c_msg msg;
 int i;

 switch (state->config->frequency) {
 case 129:
  bufs = va1j5jf8007s_20mhz_prepare_bufs;
  size = ARRAY_SIZE(va1j5jf8007s_20mhz_prepare_bufs);
  break;
 case 128:
  bufs = va1j5jf8007s_25mhz_prepare_bufs;
  size = ARRAY_SIZE(va1j5jf8007s_25mhz_prepare_bufs);
  break;
 default:
  return -EINVAL;
 }

 addr = state->config->demod_address;

 msg.addr = addr;
 msg.flags = 0;
 msg.len = 2;
 msg.buf = buf;
 for (i = 0; i < size; i++) {
  memcpy(buf, bufs[i], sizeof(buf));
  if (i2c_transfer(state->adap, &msg, 1) != 1)
   return -EREMOTEIO;
 }

 return 0;
}

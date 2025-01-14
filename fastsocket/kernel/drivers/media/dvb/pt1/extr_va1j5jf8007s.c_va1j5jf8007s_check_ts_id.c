
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int write_buf ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int isdbs_ts_id; } ;
struct TYPE_5__ {TYPE_1__ dtv_property_cache; } ;
struct va1j5jf8007s_state {int adap; TYPE_3__* config; TYPE_2__ fe; } ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
typedef int read_buf ;
struct TYPE_6__ {int demod_address; } ;


 int EREMOTEIO ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int
va1j5jf8007s_check_ts_id(struct va1j5jf8007s_state *state, int *lock)
{
 u8 addr;
 u8 write_buf[1], read_buf[2];
 struct i2c_msg msgs[2];
 u32 ts_id;

 ts_id = state->fe.dtv_property_cache.isdbs_ts_id;
 if (!ts_id) {
  *lock = 1;
  return 0;
 }

 addr = state->config->demod_address;

 write_buf[0] = 0xe6;

 msgs[0].addr = addr;
 msgs[0].flags = 0;
 msgs[0].len = sizeof(write_buf);
 msgs[0].buf = write_buf;

 msgs[1].addr = addr;
 msgs[1].flags = I2C_M_RD;
 msgs[1].len = sizeof(read_buf);
 msgs[1].buf = read_buf;

 if (i2c_transfer(state->adap, msgs, 2) != 2)
  return -EREMOTEIO;

 *lock = (read_buf[0] << 8 | read_buf[1]) == ts_id;
 return 0;
}

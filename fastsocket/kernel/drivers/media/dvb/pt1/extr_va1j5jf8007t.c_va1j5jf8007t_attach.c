
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct va1j5jf8007t_state* demodulator_priv; int ops; } ;
struct va1j5jf8007t_state {struct i2c_adapter* adap; struct va1j5jf8007t_config const* config; struct dvb_frontend fe; } ;
struct va1j5jf8007t_config {int demod_address; } ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
typedef int buf ;


 int GFP_KERNEL ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int kfree (struct va1j5jf8007t_state*) ;
 struct va1j5jf8007t_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int va1j5jf8007t_ops ;

struct dvb_frontend *
va1j5jf8007t_attach(const struct va1j5jf8007t_config *config,
      struct i2c_adapter *adap)
{
 struct va1j5jf8007t_state *state;
 struct dvb_frontend *fe;
 u8 buf[2];
 struct i2c_msg msg;

 state = kzalloc(sizeof(struct va1j5jf8007t_state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 state->config = config;
 state->adap = adap;

 fe = &state->fe;
 memcpy(&fe->ops, &va1j5jf8007t_ops, sizeof(struct dvb_frontend_ops));
 fe->demodulator_priv = state;

 buf[0] = 0x01;
 buf[1] = 0x80;

 msg.addr = state->config->demod_address;
 msg.flags = 0;
 msg.len = sizeof(buf);
 msg.buf = buf;

 if (i2c_transfer(state->adap, &msg, 1) != 1) {
  kfree(state);
  return ((void*)0);
 }

 return fe;
}

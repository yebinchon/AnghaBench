
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_frontend {struct l64781_state* demodulator_priv; int ops; } ;
struct l64781_state {int first; struct dvb_frontend frontend; struct i2c_adapter* i2c; struct l64781_config const* config; } ;
struct l64781_config {int demod_address; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int I2C_M_RD ;
 int dprintk (char*) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;
 int kfree (struct l64781_state*) ;
 struct l64781_state* kzalloc (int,int ) ;
 int l64781_ops ;
 int l64781_readreg (struct l64781_state*,int) ;
 int l64781_writereg (struct l64781_state*,int,int) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ reset_and_configure (struct l64781_state*) ;

struct dvb_frontend* l64781_attach(const struct l64781_config* config,
       struct i2c_adapter* i2c)
{
 struct l64781_state* state = ((void*)0);
 int reg0x3e = -1;
 u8 b0 [] = { 0x1a };
 u8 b1 [] = { 0x00 };
 struct i2c_msg msg [] = { { .addr = config->demod_address, .flags = 0, .buf = b0, .len = 1 },
      { .addr = config->demod_address, .flags = I2C_M_RD, .buf = b1, .len = 1 } };


 state = kzalloc(sizeof(struct l64781_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;
 state->first = 1;





 if (reset_and_configure(state) < 0) {
  dprintk("No response to reset and configure broadcast...\n");
  goto error;
 }


 if (i2c_transfer(state->i2c, msg, 2) != 2) {
  dprintk("No response to read on I2C bus\n");
  goto error;
 }


 reg0x3e = l64781_readreg(state, 0x3e);


 if (reg0x3e != 0) {
  dprintk("Device doesn't look like L64781\n");
  goto error;
 }


 l64781_writereg (state, 0x3e, 0x5a);


 if (l64781_readreg(state, 0x1a) != 0) {
  dprintk("Read 1 returned unexpcted value\n");
  goto error;
 }


 l64781_writereg (state, 0x3e, 0xa5);


 if (l64781_readreg(state, 0x1a) != 0xa1) {
  dprintk("Read 2 returned unexpcted value\n");
  goto error;
 }


 memcpy(&state->frontend.ops, &l64781_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 if (reg0x3e >= 0)
  l64781_writereg (state, 0x3e, reg0x3e);
 kfree(state);
 return ((void*)0);
}

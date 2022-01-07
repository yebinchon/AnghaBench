
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {struct ec100_state* demodulator_priv; int ops; } ;
struct ec100_state {struct dvb_frontend frontend; int config; struct i2c_adapter* i2c; } ;
struct ec100_config {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 struct ec100_config const ec100_ops ;
 int ec100_read_reg (struct ec100_state*,int,int*) ;
 int kfree (struct ec100_state*) ;
 struct ec100_state* kzalloc (int,int ) ;
 int memcpy (int *,struct ec100_config const*,int) ;

struct dvb_frontend *ec100_attach(const struct ec100_config *config,
 struct i2c_adapter *i2c)
{
 int ret;
 struct ec100_state *state = ((void*)0);
 u8 tmp;


 state = kzalloc(sizeof(struct ec100_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->i2c = i2c;
 memcpy(&state->config, config, sizeof(struct ec100_config));


 ret = ec100_read_reg(state, 0x33, &tmp);
 if (ret || tmp != 0x0b)
  goto error;


 memcpy(&state->frontend.ops, &ec100_ops,
  sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;

 return &state->frontend;
error:
 kfree(state);
 return ((void*)0);
}

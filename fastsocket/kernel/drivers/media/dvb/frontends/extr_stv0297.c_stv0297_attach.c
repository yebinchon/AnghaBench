
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct stv0297_state* demodulator_priv; int ops; } ;
struct stv0297_state {struct dvb_frontend frontend; scalar_t__ base_freq; scalar_t__ last_ber; struct i2c_adapter* i2c; struct stv0297_config const* config; } ;
struct stv0297_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct stv0297_state*) ;
 struct stv0297_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int stv0297_ops ;
 int stv0297_readreg (struct stv0297_state*,int) ;

struct dvb_frontend *stv0297_attach(const struct stv0297_config *config,
        struct i2c_adapter *i2c)
{
 struct stv0297_state *state = ((void*)0);


 state = kzalloc(sizeof(struct stv0297_state), GFP_KERNEL);
 if (state == ((void*)0))
  goto error;


 state->config = config;
 state->i2c = i2c;
 state->last_ber = 0;
 state->base_freq = 0;


 if ((stv0297_readreg(state, 0x80) & 0x70) != 0x20)
  goto error;


 memcpy(&state->frontend.ops, &stv0297_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

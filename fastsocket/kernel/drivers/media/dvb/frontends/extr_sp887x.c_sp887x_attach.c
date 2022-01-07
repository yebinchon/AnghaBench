
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct sp887x_state* demodulator_priv; int ops; } ;
struct sp887x_state {struct dvb_frontend frontend; scalar_t__ initialised; struct i2c_adapter* i2c; struct sp887x_config const* config; } ;
struct sp887x_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct sp887x_state*) ;
 struct sp887x_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int sp887x_ops ;
 scalar_t__ sp887x_readreg (struct sp887x_state*,int) ;

struct dvb_frontend* sp887x_attach(const struct sp887x_config* config,
       struct i2c_adapter* i2c)
{
 struct sp887x_state* state = ((void*)0);


 state = kzalloc(sizeof(struct sp887x_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;
 state->initialised = 0;


 if (sp887x_readreg(state, 0x0200) < 0) goto error;


 memcpy(&state->frontend.ops, &sp887x_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct sp8870_state* demodulator_priv; int ops; } ;
struct sp8870_state {struct dvb_frontend frontend; scalar_t__ initialised; struct i2c_adapter* i2c; struct sp8870_config const* config; } ;
struct sp8870_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int kfree (struct sp8870_state*) ;
 struct sp8870_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int sp8870_ops ;
 scalar_t__ sp8870_readreg (struct sp8870_state*,int) ;

struct dvb_frontend* sp8870_attach(const struct sp8870_config* config,
       struct i2c_adapter* i2c)
{
 struct sp8870_state* state = ((void*)0);


 state = kzalloc(sizeof(struct sp8870_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;
 state->initialised = 0;


 if (sp8870_readreg(state, 0x0200) < 0) goto error;


 memcpy(&state->frontend.ops, &sp8870_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

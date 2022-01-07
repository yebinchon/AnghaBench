
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct or51132_state* demodulator_priv; int ops; } ;
struct or51132_state {int current_frequency; int current_modulation; struct dvb_frontend frontend; struct i2c_adapter* i2c; struct or51132_config const* config; } ;
struct or51132_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 struct or51132_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int or51132_ops ;

struct dvb_frontend* or51132_attach(const struct or51132_config* config,
        struct i2c_adapter* i2c)
{
 struct or51132_state* state = ((void*)0);


 state = kzalloc(sizeof(struct or51132_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);


 state->config = config;
 state->i2c = i2c;
 state->current_frequency = -1;
 state->current_modulation = -1;


 memcpy(&state->frontend.ops, &or51132_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;
}

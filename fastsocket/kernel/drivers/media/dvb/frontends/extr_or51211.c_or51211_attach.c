
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct or51211_state* demodulator_priv; int ops; } ;
struct or51211_state {struct dvb_frontend frontend; scalar_t__ current_frequency; scalar_t__ initialized; struct i2c_adapter* i2c; struct or51211_config const* config; } ;
struct or51211_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 struct or51211_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int or51211_ops ;

struct dvb_frontend* or51211_attach(const struct or51211_config* config,
        struct i2c_adapter* i2c)
{
 struct or51211_state* state = ((void*)0);


 state = kzalloc(sizeof(struct or51211_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);


 state->config = config;
 state->i2c = i2c;
 state->initialized = 0;
 state->current_frequency = 0;


 memcpy(&state->frontend.ops, &or51211_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;
}

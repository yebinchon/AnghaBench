
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct drx397xD_state* demodulator_priv; int ops; } ;
struct drx397xD_state {struct dvb_frontend frontend; int config; struct i2c_adapter* i2c; } ;
struct drx397xD_config {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ RD16 (struct drx397xD_state*,int) ;
 struct drx397xD_config const drx397x_ops ;
 int kfree (struct drx397xD_state*) ;
 struct drx397xD_state* kzalloc (int,int ) ;
 int memcpy (int *,struct drx397xD_config const*,int) ;

struct dvb_frontend *drx397xD_attach(const struct drx397xD_config *config,
         struct i2c_adapter *i2c)
{
 struct drx397xD_state *state;


 state = kzalloc(sizeof(struct drx397xD_state), GFP_KERNEL);
 if (!state)
  goto error;


 state->i2c = i2c;
 memcpy(&state->config, config, sizeof(struct drx397xD_config));


 if (RD16(state, 0x2410019) < 0)
  goto error;


 memcpy(&state->frontend.ops, &drx397x_ops,
   sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;

 return &state->frontend;
error:
 kfree(state);

 return ((void*)0);
}

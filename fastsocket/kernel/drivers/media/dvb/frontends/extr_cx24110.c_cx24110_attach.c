
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cx24110_state* demodulator_priv; int ops; } ;
struct cx24110_state {struct dvb_frontend frontend; scalar_t__ lastesn0; scalar_t__ lastbler; scalar_t__ lastber; struct i2c_adapter* i2c; struct cx24110_config const* config; } ;
struct cx24110_config {int dummy; } ;


 int GFP_KERNEL ;
 int cx24110_ops ;
 int cx24110_readreg (struct cx24110_state*,int) ;
 int kfree (struct cx24110_state*) ;
 struct cx24110_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend* cx24110_attach(const struct cx24110_config* config,
        struct i2c_adapter* i2c)
{
 struct cx24110_state* state = ((void*)0);
 int ret;


 state = kzalloc(sizeof(struct cx24110_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;
 state->lastber = 0;
 state->lastbler = 0;
 state->lastesn0 = 0;


 ret = cx24110_readreg(state, 0x00);
 if ((ret != 0x5a) && (ret != 0x69)) goto error;


 memcpy(&state->frontend.ops, &cx24110_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

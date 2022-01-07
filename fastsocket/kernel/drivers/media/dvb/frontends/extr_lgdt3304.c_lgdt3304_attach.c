
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct lgdt3304_state* demodulator_priv; int ops; } ;
struct lgdt3304_state {struct dvb_frontend frontend; struct i2c_adapter* i2c; int addr; } ;
struct lgdt3304_config {int i2c_address; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int demod_lgdt3304 ;
 struct lgdt3304_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend* lgdt3304_attach(const struct lgdt3304_config *config,
        struct i2c_adapter *i2c)
{

 struct lgdt3304_state *state;
 state = kzalloc(sizeof(struct lgdt3304_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);
 state->addr = config->i2c_address;
 state->i2c = i2c;

 memcpy(&state->frontend.ops, &demod_lgdt3304, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct s921_state* demodulator_priv; int ops; } ;
struct s921_state {struct dvb_frontend frontend; struct i2c_adapter* i2c; struct s921_config const* config; } ;
struct s921_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int dprintk (char*) ;
 int kfree (struct s921_state*) ;
 struct s921_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int rc (char*) ;
 int s921_ops ;

struct dvb_frontend *s921_attach(const struct s921_config *config,
        struct i2c_adapter *i2c)
{

 struct s921_state *state =
  kzalloc(sizeof(struct s921_state), GFP_KERNEL);

 dprintk("\n");
 if (state == ((void*)0)) {
  rc("Unable to kzalloc\n");
  goto rcor;
 }


 state->config = config;
 state->i2c = i2c;


 memcpy(&state->frontend.ops, &s921_ops,
  sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;

 return &state->frontend;

rcor:
 kfree(state);

 return ((void*)0);
}

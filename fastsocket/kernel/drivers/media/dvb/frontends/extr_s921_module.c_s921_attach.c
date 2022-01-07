
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct s921_state* demodulator_priv; int ops; } ;
struct TYPE_2__ {struct s921_state* priv_dev; int * i2c_read; int * i2c_write; } ;
struct s921_state {struct dvb_frontend frontend; TYPE_1__ dev; struct i2c_adapter* i2c; int addr; } ;
struct s921_config {int i2c_address; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 int ISDB_T_CMD_INIT ;
 int demod_s921 ;
 struct s921_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int s921_isdb_cmd (TYPE_1__*,int ,int *) ;
 int s921_read ;
 int s921_write ;

struct dvb_frontend* s921_attach(const struct s921_config *config,
        struct i2c_adapter *i2c)
{

 struct s921_state *state;
 state = kzalloc(sizeof(struct s921_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);

 state->addr = config->i2c_address;
 state->i2c = i2c;
 state->dev.i2c_write = &s921_write;
 state->dev.i2c_read = &s921_read;
 state->dev.priv_dev = state;

 s921_isdb_cmd(&state->dev, ISDB_T_CMD_INIT, ((void*)0));

 memcpy(&state->frontend.ops, &demod_s921, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;
}

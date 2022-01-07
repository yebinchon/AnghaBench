
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct itd1000_state {void** shadow; struct i2c_adapter* i2c; struct itd1000_config* cfg; } ;
struct itd1000_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {struct itd1000_state* tuner_priv; TYPE_1__ ops; } ;


 int GFP_KERNEL ;
 int info (char*,int) ;
 void* itd1000_read_reg (struct itd1000_state*,int) ;
 int itd1000_tuner_ops ;
 int kfree (struct itd1000_state*) ;
 struct itd1000_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (void**,int,int) ;

struct dvb_frontend *itd1000_attach(struct dvb_frontend *fe, struct i2c_adapter *i2c, struct itd1000_config *cfg)
{
 struct itd1000_state *state = ((void*)0);
 u8 i = 0;

 state = kzalloc(sizeof(struct itd1000_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);

 state->cfg = cfg;
 state->i2c = i2c;

 i = itd1000_read_reg(state, 0);
 if (i != 0) {
  kfree(state);
  return ((void*)0);
 }
 info("successfully identified (ID: %d)", i);

 memset(state->shadow, 0xff, sizeof(state->shadow));
 for (i = 0x65; i < 0x9c; i++)
  state->shadow[i] = itd1000_read_reg(state, i);

 memcpy(&fe->ops.tuner_ops, &itd1000_tuner_ops, sizeof(struct dvb_tuner_ops));

 fe->tuner_priv = state;

 return fe;
}

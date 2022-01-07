
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct nxt6000_state* demodulator_priv; int ops; } ;
struct nxt6000_state {struct dvb_frontend frontend; struct i2c_adapter* i2c; struct nxt6000_config const* config; } ;
struct nxt6000_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ NXT6000ASICDEVICE ;
 int OFDM_MSC_REV ;
 int kfree (struct nxt6000_state*) ;
 struct nxt6000_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int nxt6000_ops ;
 scalar_t__ nxt6000_readreg (struct nxt6000_state*,int ) ;

struct dvb_frontend* nxt6000_attach(const struct nxt6000_config* config,
        struct i2c_adapter* i2c)
{
 struct nxt6000_state* state = ((void*)0);


 state = kzalloc(sizeof(struct nxt6000_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 state->config = config;
 state->i2c = i2c;


 if (nxt6000_readreg(state, OFDM_MSC_REV) != NXT6000ASICDEVICE) goto error;


 memcpy(&state->frontend.ops, &nxt6000_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}

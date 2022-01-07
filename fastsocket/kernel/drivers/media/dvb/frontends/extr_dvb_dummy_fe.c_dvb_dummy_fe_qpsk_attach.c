
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct dvb_dummy_fe_state* demodulator_priv; int ops; } ;
struct dvb_dummy_fe_state {struct dvb_frontend frontend; } ;


 int GFP_KERNEL ;
 int dvb_dummy_fe_qpsk_ops ;
 int kfree (struct dvb_dummy_fe_state*) ;
 struct dvb_dummy_fe_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

struct dvb_frontend *dvb_dummy_fe_qpsk_attach(void)
{
 struct dvb_dummy_fe_state* state = ((void*)0);


 state = kzalloc(sizeof(struct dvb_dummy_fe_state), GFP_KERNEL);
 if (state == ((void*)0)) goto error;


 memcpy(&state->frontend.ops, &dvb_dummy_fe_qpsk_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;

error:
 kfree(state);
 return ((void*)0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct ttusbdecfe_state* demodulator_priv; int ops; } ;
struct ttusbdecfe_state {struct dvb_frontend frontend; struct ttusbdecfe_config const* config; } ;
struct ttusbdecfe_config {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 struct ttusbdecfe_state* kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int ttusbdecfe_dvbt_ops ;

struct dvb_frontend* ttusbdecfe_dvbt_attach(const struct ttusbdecfe_config* config)
{
 struct ttusbdecfe_state* state = ((void*)0);


 state = kmalloc(sizeof(struct ttusbdecfe_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);


 state->config = config;


 memcpy(&state->frontend.ops, &ttusbdecfe_dvbt_ops, sizeof(struct dvb_frontend_ops));
 state->frontend.demodulator_priv = state;
 return &state->frontend;
}

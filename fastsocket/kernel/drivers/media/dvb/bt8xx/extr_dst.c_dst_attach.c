
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend_ops {int dummy; } ;
struct dvb_adapter {int dummy; } ;
struct TYPE_2__ {struct dst_state* demodulator_priv; int ops; } ;
struct dst_state {int dst_type; TYPE_1__ frontend; } ;


 int DST_ERROR ;




 int dprintk (int ,int ,int,char*) ;
 int dst_atsc_ops ;
 int dst_dvbc_ops ;
 int dst_dvbs_ops ;
 int dst_dvbt_ops ;
 scalar_t__ dst_probe (struct dst_state*) ;
 int kfree (struct dst_state*) ;
 int memcpy (int *,int *,int) ;
 int verbose ;

struct dst_state *dst_attach(struct dst_state *state, struct dvb_adapter *dvb_adapter)
{

 if (dst_probe(state) < 0) {
  kfree(state);
  return ((void*)0);
 }


 switch (state->dst_type) {
 case 128:
  memcpy(&state->frontend.ops, &dst_dvbt_ops, sizeof(struct dvb_frontend_ops));
  break;
 case 130:
  memcpy(&state->frontend.ops, &dst_dvbc_ops, sizeof(struct dvb_frontend_ops));
  break;
 case 129:
  memcpy(&state->frontend.ops, &dst_dvbs_ops, sizeof(struct dvb_frontend_ops));
  break;
 case 131:
  memcpy(&state->frontend.ops, &dst_atsc_ops, sizeof(struct dvb_frontend_ops));
  break;
 default:
  dprintk(verbose, DST_ERROR, 1, "unknown DST type. please report to the LinuxTV.org DVB mailinglist.");
  kfree(state);
  return ((void*)0);
 }
 state->frontend.demodulator_priv = state;

 return state;
}

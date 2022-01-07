
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ transmission_mode; scalar_t__ guard_interval; scalar_t__ constellation; scalar_t__ code_rate_HP; int bandwidth; } ;
struct TYPE_8__ {TYPE_3__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_4__ u; } ;
struct TYPE_5__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_6__ {TYPE_1__ tuner_ops; } ;
struct dvb_frontend {TYPE_2__ ops; struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int sfn_workaround_active; int current_bandwidth; } ;


 int BANDWIDTH_TO_KHZ (int ) ;
 scalar_t__ FEC_AUTO ;
 scalar_t__ GUARD_INTERVAL_AUTO ;
 int OUTMODE_HIGH_Z ;
 int OUTMODE_MPEG2_FIFO ;
 scalar_t__ QAM_AUTO ;
 scalar_t__ TRANSMISSION_MODE_AUTO ;
 int buggy_sfn_workaround ;
 int dib3000mc_autosearch_is_irq (struct dvb_frontend*) ;
 int dib3000mc_autosearch_start (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int dib3000mc_get_frontend (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int dib3000mc_set_bandwidth (struct dib3000mc_state*,int ) ;
 int dib3000mc_set_output_mode (struct dib3000mc_state*,int ) ;
 int dib3000mc_tune (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int dprintk (char*,int) ;
 int msleep (int) ;
 int stub1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;

__attribute__((used)) static int dib3000mc_set_frontend(struct dvb_frontend* fe,
    struct dvb_frontend_parameters *fep)
{
 struct dib3000mc_state *state = fe->demodulator_priv;
    int ret;

 dib3000mc_set_output_mode(state, OUTMODE_HIGH_Z);

 state->current_bandwidth = fep->u.ofdm.bandwidth;
 dib3000mc_set_bandwidth(state, BANDWIDTH_TO_KHZ(fep->u.ofdm.bandwidth));


 state->sfn_workaround_active = buggy_sfn_workaround;

 if (fe->ops.tuner_ops.set_params) {
  fe->ops.tuner_ops.set_params(fe, fep);
  msleep(100);
 }

 if (fep->u.ofdm.transmission_mode == TRANSMISSION_MODE_AUTO ||
  fep->u.ofdm.guard_interval == GUARD_INTERVAL_AUTO ||
  fep->u.ofdm.constellation == QAM_AUTO ||
  fep->u.ofdm.code_rate_HP == FEC_AUTO) {
  int i = 1000, found;

  dib3000mc_autosearch_start(fe, fep);
  do {
   msleep(1);
   found = dib3000mc_autosearch_is_irq(fe);
  } while (found == 0 && i--);

  dprintk("autosearch returns: %d\n",found);
  if (found == 0 || found == 1)
   return 0;

  dib3000mc_get_frontend(fe, fep);
 }

    ret = dib3000mc_tune(fe, fep);


 dib3000mc_set_output_mode(state, OUTMODE_MPEG2_FIFO);
    return ret;
}

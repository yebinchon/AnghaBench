
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int symbol_rate; int fec_inner; } ;
struct TYPE_7__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int inversion; int frequency; } ;
struct TYPE_8__ {int (* set_params ) (struct dvb_frontend*,struct dvb_frontend_parameters*) ;} ;
struct TYPE_9__ {TYPE_3__ tuner_ops; } ;
struct dvb_frontend {TYPE_4__ ops; struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {TYPE_5__* config; int currentsymbolrate; int currentfreq; } ;
struct TYPE_10__ {int (* agc_callback ) (struct dvb_frontend*) ;int dont_use_pll; int (* set_ts_params ) (struct dvb_frontend*,int ) ;} ;


 int cx24123_pll_tune (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int cx24123_readreg (struct cx24123_state*,int) ;
 int cx24123_set_fec (struct cx24123_state*,int ) ;
 int cx24123_set_inversion (struct cx24123_state*,int ) ;
 int cx24123_set_symbolrate (struct cx24123_state*,int ) ;
 int cx24123_writereg (struct cx24123_state*,int,int) ;
 int dprintk (char*) ;
 int err (char*) ;
 int stub1 (struct dvb_frontend*,int ) ;
 int stub2 (struct dvb_frontend*,struct dvb_frontend_parameters*) ;
 int stub3 (struct dvb_frontend*) ;

__attribute__((used)) static int cx24123_set_frontend(struct dvb_frontend *fe,
 struct dvb_frontend_parameters *p)
{
 struct cx24123_state *state = fe->demodulator_priv;

 dprintk("\n");

 if (state->config->set_ts_params)
  state->config->set_ts_params(fe, 0);

 state->currentfreq = p->frequency;
 state->currentsymbolrate = p->u.qpsk.symbol_rate;

 cx24123_set_inversion(state, p->inversion);
 cx24123_set_fec(state, p->u.qpsk.fec_inner);
 cx24123_set_symbolrate(state, p->u.qpsk.symbol_rate);

 if (!state->config->dont_use_pll)
  cx24123_pll_tune(fe, p);
 else if (fe->ops.tuner_ops.set_params)
  fe->ops.tuner_ops.set_params(fe, p);
 else
  err("it seems I don't have a tuner...");


 cx24123_writereg(state, 0x03, (cx24123_readreg(state, 0x03) | 0x07));
 cx24123_writereg(state, 0x00, 0x10);
 cx24123_writereg(state, 0x00, 0);

 if (state->config->agc_callback)
  state->config->agc_callback(fe);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stb0899_internal {int srate; int srch_range; int derot_percent; int lock; int tuner_bw; int freq; } ;
struct stb0899_params {int srate; int freq; } ;
struct stb0899_state {int delsys; int verbose; int frontend; struct stb0899_config* config; struct stb0899_internal internal; struct stb0899_params params; } ;
struct stb0899_config {int (* tuner_get_bandwidth ) (struct dvb_frontend*,int *) ;int (* tuner_set_bandwidth ) (struct dvb_frontend*,int) ;int hi_clk; int lo_clk; int (* tuner_set_rfsiggain ) (struct dvb_frontend*,int) ;} ;
struct TYPE_3__ {int symbol_rate; } ;
struct TYPE_4__ {TYPE_1__ qpsk; } ;
struct dvb_frontend_parameters {TYPE_2__ u; int frequency; } ;
struct dtv_frontend_properties {int delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct stb0899_state* demodulator_priv; } ;
typedef enum dvbfe_search { ____Placeholder_dvbfe_search } dvbfe_search ;


 int DVBFE_ALGO_SEARCH_ERROR ;
 int DVBFE_ALGO_SEARCH_FAILED ;
 int DVBFE_ALGO_SEARCH_INVALID ;
 int DVBFE_ALGO_SEARCH_SUCCESS ;
 int DVBS2_FEC_LOCK ;
 int FE_DEBUG ;
 int FE_ERROR ;
 scalar_t__ INRANGE (int,int,int) ;
 int RANGEOK ;
 int STB0899_AGCRFCFG ;



 int dprintk (int ,int ,int,char*,...) ;
 int stb0899_carr_width (struct stb0899_state*) ;
 int stb0899_dvbs2_algo (struct stb0899_state*) ;
 int stb0899_dvbs_algo (struct stb0899_state*) ;
 int stb0899_i2c_gate_ctrl (int *,int) ;
 int stb0899_set_delivery (struct stb0899_state*) ;
 int stb0899_set_iterations (struct stb0899_state*) ;
 int stb0899_set_mclk (struct stb0899_state*,int ) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;
 int stub3 (struct dvb_frontend*,int *) ;
 int stub4 (struct dvb_frontend*,int) ;
 int stub5 (struct dvb_frontend*,int *) ;

__attribute__((used)) static enum dvbfe_search stb0899_search(struct dvb_frontend *fe, struct dvb_frontend_parameters *p)
{
 struct stb0899_state *state = fe->demodulator_priv;
 struct stb0899_params *i_params = &state->params;
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_config *config = state->config;
 struct dtv_frontend_properties *props = &fe->dtv_property_cache;

 u32 SearchRange, gain;

 i_params->freq = p->frequency;
 i_params->srate = p->u.qpsk.symbol_rate;
 state->delsys = props->delivery_system;
 dprintk(state->verbose, FE_DEBUG, 1, "delivery system=%d", state->delsys);

 SearchRange = 10000000;
 dprintk(state->verbose, FE_DEBUG, 1, "Frequency=%d, Srate=%d", i_params->freq, i_params->srate);

 if (INRANGE(i_params->srate, 1000000, 45000000)) {
  dprintk(state->verbose, FE_DEBUG, 1, "Parameters IN RANGE");
  stb0899_set_delivery(state);

  if (state->config->tuner_set_rfsiggain) {
   if (internal->srate > 15000000)
    gain = 8;
   else if (internal->srate > 5000000)
    gain = 12;
   else
    gain = 14;
   state->config->tuner_set_rfsiggain(fe, gain);
  }

  if (i_params->srate <= 5000000)
   stb0899_set_mclk(state, config->lo_clk);
  else
   stb0899_set_mclk(state, config->hi_clk);

  switch (state->delsys) {
  case 129:
  case 130:
   dprintk(state->verbose, FE_DEBUG, 1, "DVB-S delivery system");
   internal->freq = i_params->freq;
   internal->srate = i_params->srate;






   internal->srch_range = SearchRange + 1500000 + (i_params->srate / 5);
   internal->derot_percent = 30;



   stb0899_i2c_gate_ctrl(&state->frontend, 1);

   if (state->config->tuner_set_bandwidth)
    state->config->tuner_set_bandwidth(fe, (13 * (stb0899_carr_width(state) + SearchRange)) / 10);
   if (state->config->tuner_get_bandwidth)
    state->config->tuner_get_bandwidth(fe, &internal->tuner_bw);


   stb0899_i2c_gate_ctrl(&state->frontend, 0);


   stb0899_write_reg(state, STB0899_AGCRFCFG, 0x11);


   dprintk(state->verbose, FE_DEBUG, 1, "running DVB-S search algo ..");
   if (stb0899_dvbs_algo(state) == RANGEOK) {
    internal->lock = 1;
    dprintk(state->verbose, FE_DEBUG, 1,
     "-------------------------------------> DVB-S LOCK !");







    return DVBFE_ALGO_SEARCH_SUCCESS;
   } else {
    internal->lock = 0;

    return DVBFE_ALGO_SEARCH_FAILED;
   }
   break;
  case 128:
   internal->freq = i_params->freq;
   internal->srate = i_params->srate;
   internal->srch_range = SearchRange;


   stb0899_i2c_gate_ctrl(&state->frontend, 1);

   if (state->config->tuner_set_bandwidth)
    state->config->tuner_set_bandwidth(fe, (stb0899_carr_width(state) + SearchRange));
   if (state->config->tuner_get_bandwidth)
    state->config->tuner_get_bandwidth(fe, &internal->tuner_bw);


   stb0899_i2c_gate_ctrl(&state->frontend, 0);




   stb0899_write_reg(state, STB0899_AGCRFCFG, 0x1c);


   stb0899_set_iterations(state);


   dprintk(state->verbose, FE_DEBUG, 1, "running DVB-S2 search algo ..");
   if (stb0899_dvbs2_algo(state) == DVBS2_FEC_LOCK) {
    internal->lock = 1;
    dprintk(state->verbose, FE_DEBUG, 1,
     "-------------------------------------> DVB-S2 LOCK !");





    return DVBFE_ALGO_SEARCH_SUCCESS;
   } else {
    internal->lock = 0;

    return DVBFE_ALGO_SEARCH_FAILED;
   }
   break;
  default:
   dprintk(state->verbose, FE_ERROR, 1, "Unsupported delivery system");
   return DVBFE_ALGO_SEARCH_INVALID;
  }
 }

 return DVBFE_ALGO_SEARCH_ERROR;
}

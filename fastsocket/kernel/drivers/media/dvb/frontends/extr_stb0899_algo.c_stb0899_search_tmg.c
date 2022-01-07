
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct stb0899_params {long srate; } ;
struct stb0899_internal {scalar_t__ status; long sub_range; long mclk; int direction; int derot_freq; } ;
struct stb0899_state {int verbose; TYPE_1__* config; struct stb0899_params params; struct stb0899_internal internal; } ;
typedef enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;
struct TYPE_2__ {short inversion; } ;


 int CFRL ;
 int CFRM ;
 int FE_DEBUG ;
 int LSB (short) ;
 int MAKEWORD16 (int ,int ) ;
 int MSB (short) ;
 scalar_t__ NOTIMING ;
 int STB0899_CFRM ;
 int STB0899_SETFIELD_VAL (int ,int ,int ) ;
 scalar_t__ TIMINGOK ;
 short abs (short) ;
 int dprintk (int ,int ,int,char*,int) ;
 scalar_t__ stb0899_check_tmg (struct stb0899_state*) ;
 int stb0899_read_regs (struct stb0899_state*,int ,int *,int) ;
 int stb0899_write_regs (struct stb0899_state*,int ,int *,int) ;

__attribute__((used)) static enum stb0899_status stb0899_search_tmg(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_params *params = &state->params;

 short int derot_step, derot_freq = 0, derot_limit, next_loop = 3;
 int index = 0;
 u8 cfr[2];

 internal->status = NOTIMING;


 derot_limit = (internal->sub_range / 2L) / internal->mclk;
 derot_step = (params->srate / 2L) / internal->mclk;

 while ((stb0899_check_tmg(state) != TIMINGOK) && next_loop) {
  index++;
  derot_freq += index * internal->direction * derot_step;

  if (abs(derot_freq) > derot_limit)
   next_loop--;

  if (next_loop) {
   STB0899_SETFIELD_VAL(CFRM, cfr[0], MSB(state->config->inversion * derot_freq));
   STB0899_SETFIELD_VAL(CFRL, cfr[1], LSB(state->config->inversion * derot_freq));
   stb0899_write_regs(state, STB0899_CFRM, cfr, 2);
  }
  internal->direction = -internal->direction;
 }

 if (internal->status == TIMINGOK) {
  stb0899_read_regs(state, STB0899_CFRM, cfr, 2);
  internal->derot_freq = state->config->inversion * MAKEWORD16(cfr[0], cfr[1]);
  dprintk(state->verbose, FE_DEBUG, 1, "------->TIMING OK ! Derot Freq = %d", internal->derot_freq);
 }

 return internal->status;
}

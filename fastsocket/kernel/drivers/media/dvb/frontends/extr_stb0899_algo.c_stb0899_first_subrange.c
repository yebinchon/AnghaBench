
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_params {int freq; } ;
struct stb0899_internal {long tuner_offst; int sub_dir; int freq; scalar_t__ sub_range; int srch_range; } ;
struct stb0899_state {int frontend; struct stb0899_config* config; struct stb0899_params params; struct stb0899_internal internal; } ;
struct stb0899_config {int (* tuner_get_bandwidth ) (int *,int*) ;} ;


 scalar_t__ min (int ,int) ;
 int stb0899_carr_width (struct stb0899_state*) ;
 int stb0899_i2c_gate_ctrl (int *,int) ;
 int stub1 (int *,int*) ;

__attribute__((used)) static void stb0899_first_subrange(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_params *params = &state->params;
 struct stb0899_config *config = state->config;

 int range = 0;
 u32 bandwidth = 0;

 if (config->tuner_get_bandwidth) {
  stb0899_i2c_gate_ctrl(&state->frontend, 1);
  config->tuner_get_bandwidth(&state->frontend, &bandwidth);
  stb0899_i2c_gate_ctrl(&state->frontend, 0);
  range = bandwidth - stb0899_carr_width(state) / 2;
 }

 if (range > 0)
  internal->sub_range = min(internal->srch_range, range);
 else
  internal->sub_range = 0;

 internal->freq = params->freq;
 internal->tuner_offst = 0L;
 internal->sub_dir = 1;
}

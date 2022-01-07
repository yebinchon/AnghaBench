
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stb0899_internal {int master_clk; int srate; } ;
struct stb0899_state {struct stb0899_config* config; struct stb0899_internal internal; } ;
struct stb0899_config {int ldpc_max_iter; } ;
typedef int s32 ;


 int MAX_ITER ;
 int MAX_ITERATIONS ;
 int STB0899_BASE_MAX_ITER ;
 int STB0899_OFF0_MAX_ITER ;
 int STB0899_READ_S2REG (int ,int ) ;
 int STB0899_S2DEMOD ;
 int STB0899_SETFIELD_VAL (int ,int ,int) ;
 int stb0899_write_s2reg (struct stb0899_state*,int ,int ,int ,int ) ;

__attribute__((used)) static void stb0899_set_iterations(struct stb0899_state *state)
{
 struct stb0899_internal *internal = &state->internal;
 struct stb0899_config *config = state->config;

 s32 iter_scale;
 u32 reg;

 iter_scale = 17 * (internal->master_clk / 1000);
 iter_scale += 410000;
 iter_scale /= (internal->srate / 1000000);
 iter_scale /= 1000;

 if (iter_scale > config->ldpc_max_iter)
  iter_scale = config->ldpc_max_iter;

 reg = STB0899_READ_S2REG(STB0899_S2DEMOD, MAX_ITER);
 STB0899_SETFIELD_VAL(MAX_ITERATIONS, reg, iter_scale);
 stb0899_write_s2reg(state, STB0899_S2DEMOD, STB0899_BASE_MAX_ITER, STB0899_OFF0_MAX_ITER, reg);
}

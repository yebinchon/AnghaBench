
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dib0090_state {int const* bb_ramp; } ;


 int dib0090_set_boost (struct dib0090_state*,int) ;

__attribute__((used)) static void dib0090_set_bbramp(struct dib0090_state *state, const u16 * cfg)
{
 state->bb_ramp = cfg;
 dib0090_set_boost(state, cfg[0] > 500);
}

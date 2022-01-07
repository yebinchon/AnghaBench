
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dib0090_state {int bb_1_def; TYPE_2__* fe; } ;
struct TYPE_3__ {int bandwidth_hz; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;


 int dib0090_write_reg (struct dib0090_state*,int,int) ;

__attribute__((used)) static void dib0090_set_bandwidth(struct dib0090_state *state)
{
 u16 tmp;

 if (state->fe->dtv_property_cache.bandwidth_hz / 1000 <= 5000)
  tmp = (3 << 14);
 else if (state->fe->dtv_property_cache.bandwidth_hz / 1000 <= 6000)
  tmp = (2 << 14);
 else if (state->fe->dtv_property_cache.bandwidth_hz / 1000 <= 7000)
  tmp = (1 << 14);
 else
  tmp = (0 << 14);

 state->bb_1_def &= 0x3fff;
 state->bb_1_def |= tmp;

 dib0090_write_reg(state, 0x01, state->bb_1_def);
}

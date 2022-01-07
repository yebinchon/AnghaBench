
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
typedef scalar_t__ timf ;
struct TYPE_4__ {TYPE_1__* bw; } ;
struct dib7000p_state {int current_bandwidth; scalar_t__ timf; TYPE_2__ cfg; } ;
struct TYPE_3__ {int timf; } ;


 int dib7000p_write_word (struct dib7000p_state*,int,int ) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib7000p_set_bandwidth(struct dib7000p_state *state, u32 bw)
{
 u32 timf;


 state->current_bandwidth = bw;

 if (state->timf == 0) {
  dprintk( "using default timf");
  timf = state->cfg.bw->timf;
 } else {
  dprintk( "using updated timf");
  timf = state->timf;
 }

 timf = timf * (bw / 50) / 160;

 dib7000p_write_word(state, 23, (u16) ((timf >> 16) & 0xffff));
 dib7000p_write_word(state, 24, (u16) ((timf ) & 0xffff));

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* update_lna ) (int *,int ) ;} ;
struct dib8000_state {int fe; TYPE_1__ cfg; } ;


 int dib8000_read_word (struct dib8000_state*,int) ;
 int dib8000_restart_agc (struct dib8000_state*) ;
 scalar_t__ stub1 (int *,int ) ;

__attribute__((used)) static int dib8000_update_lna(struct dib8000_state *state)
{
 u16 dyn_gain;

 if (state->cfg.update_lna) {

  dyn_gain = dib8000_read_word(state, 390);

  if (state->cfg.update_lna(&state->fe, dyn_gain)) {
   dib8000_restart_agc(state);
   return 1;
  }
 }
 return 0;
}

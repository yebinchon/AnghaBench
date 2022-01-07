
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dib8000_state {int timf; int timf_default; } ;


 int dib8000_read32 (struct dib8000_state*,int) ;
 int dib8000_write_word (struct dib8000_state*,int,int ) ;
 int dprintk (char*,int,int ) ;

__attribute__((used)) static void dib8000_update_timf(struct dib8000_state *state)
{
 u32 timf = state->timf = dib8000_read32(state, 435);

 dib8000_write_word(state, 29, (u16) (timf >> 16));
 dib8000_write_word(state, 30, (u16) (timf & 0xffff));
 dprintk("Updated timing frequency: %d (default: %d)", state->timf, state->timf_default);
}

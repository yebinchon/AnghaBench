
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct dib7000m_state {int timf; int current_bandwidth; int timf_default; } ;


 int dib7000m_read_word (struct dib7000m_state*,int) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int ) ;
 int dprintk (char*,int,int ) ;

__attribute__((used)) static void dib7000m_update_timf(struct dib7000m_state *state)
{
 u32 timf = (dib7000m_read_word(state, 436) << 16) | dib7000m_read_word(state, 437);
 state->timf = timf * 160 / (state->current_bandwidth / 50);
 dib7000m_write_word(state, 23, (u16) (timf >> 16));
 dib7000m_write_word(state, 24, (u16) (timf & 0xffff));
 dprintk( "updated timf_frequency: %d (default: %d)",state->timf, state->timf_default);
}

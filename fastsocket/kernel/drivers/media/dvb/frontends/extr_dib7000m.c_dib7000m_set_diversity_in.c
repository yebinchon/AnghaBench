
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int div_sync_wait; scalar_t__ reg_offs; scalar_t__ div_state; scalar_t__ div_force_off; } ;


 int dib7000m_write_word (struct dib7000m_state*,scalar_t__,int) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib7000m_set_diversity_in(struct dvb_frontend *demod, int onoff)
{
 struct dib7000m_state *state = demod->demodulator_priv;

 if (state->div_force_off) {
  dprintk( "diversity combination deactivated - forced by COFDM parameters");
  onoff = 0;
 }
 state->div_state = (u8)onoff;

 if (onoff) {
  dib7000m_write_word(state, 263 + state->reg_offs, 6);
  dib7000m_write_word(state, 264 + state->reg_offs, 6);
  dib7000m_write_word(state, 266 + state->reg_offs, (state->div_sync_wait << 4) | (1 << 2) | (2 << 0));
 } else {
  dib7000m_write_word(state, 263 + state->reg_offs, 1);
  dib7000m_write_word(state, 264 + state->reg_offs, 0);
  dib7000m_write_word(state, 266 + state->reg_offs, 0);
 }

 return 0;
}

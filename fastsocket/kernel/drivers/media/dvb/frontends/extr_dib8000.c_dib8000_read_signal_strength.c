
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct dib8000_state {int dummy; } ;


 scalar_t__ dib8000_read_word (struct dib8000_state*,int) ;

__attribute__((used)) static int dib8000_read_signal_strength(struct dvb_frontend *fe, u16 * strength)
{
 struct dib8000_state *state = fe->demodulator_priv;
 u16 val = dib8000_read_word(state, 390);
 *strength = 65535 - val;
 return 0;
}

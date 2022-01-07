
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct dvb_frontend {struct dib7000m_state* demodulator_priv; } ;
struct dib7000m_state {int dummy; } ;


 scalar_t__ dib7000m_read_word (struct dib7000m_state*,int) ;

__attribute__((used)) static int dib7000m_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct dib7000m_state *state = fe->demodulator_priv;
 u16 val = dib7000m_read_word(state, 390);
 *strength = 65535 - val;
 return 0;
}

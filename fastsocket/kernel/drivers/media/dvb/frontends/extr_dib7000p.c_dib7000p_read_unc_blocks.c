
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int dummy; } ;


 int dib7000p_read_word (struct dib7000p_state*,int) ;

__attribute__((used)) static int dib7000p_read_unc_blocks(struct dvb_frontend *fe, u32 *unc)
{
 struct dib7000p_state *state = fe->demodulator_priv;
 *unc = dib7000p_read_word(state, 506);
 return 0;
}

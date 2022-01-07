
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int dummy; } ;


 int dib0090_write_reg (struct dib0090_state*,int,int) ;

void dib0090_dcc_freq(struct dvb_frontend *fe, u8 fast)
{
 struct dib0090_state *state = fe->tuner_priv;
 if (fast)
  dib0090_write_reg(state, 0x04, 0);
 else
  dib0090_write_reg(state, 0x04, 1);
}

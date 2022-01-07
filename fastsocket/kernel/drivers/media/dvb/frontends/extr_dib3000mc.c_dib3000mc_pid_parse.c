
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int dummy; } ;


 int dib3000mc_read_word (struct dib3000mc_state*,int) ;
 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;

int dib3000mc_pid_parse(struct dvb_frontend *fe, int onoff)
{
 struct dib3000mc_state *state = fe->demodulator_priv;
 u16 tmp = dib3000mc_read_word(state, 206) & ~(1 << 4);
 tmp |= (onoff << 4);
 return dib3000mc_write_word(state, 206, tmp);
}

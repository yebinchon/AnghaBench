
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {int dummy; } ;


 int dib3000mc_write_word (struct dib3000mc_state*,int,int) ;

__attribute__((used)) static int dib3000mc_sleep(struct dvb_frontend *demod)
{
 struct dib3000mc_state *state = demod->demodulator_priv;

 dib3000mc_write_word(state, 1031, 0xFFFF);
 dib3000mc_write_word(state, 1032, 0xFFFF);
 dib3000mc_write_word(state, 1033, 0xFFF0);

    return 0;
}

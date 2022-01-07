
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stv0297_state {scalar_t__ last_ber; TYPE_1__* config; } ;
struct dvb_frontend {struct stv0297_state* demodulator_priv; } ;
struct TYPE_2__ {int* inittab; } ;


 int msleep (int) ;
 int stv0297_writereg (struct stv0297_state*,int,int) ;

__attribute__((used)) static int stv0297_init(struct dvb_frontend *fe)
{
 struct stv0297_state *state = fe->demodulator_priv;
 int i;


 for (i=0; !(state->config->inittab[i] == 0xff && state->config->inittab[i+1] == 0xff); i+=2)
  stv0297_writereg(state, state->config->inittab[i], state->config->inittab[i+1]);
 msleep(200);

 state->last_ber = 0;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0288_state {scalar_t__ initialised; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;


 int stv0288_writeregI (struct stv0288_state*,int,int) ;

__attribute__((used)) static int stv0288_sleep(struct dvb_frontend *fe)
{
 struct stv0288_state *state = fe->demodulator_priv;

 stv0288_writeregI(state, 0x41, 0x84);
 state->initialised = 0;

 return 0;
}

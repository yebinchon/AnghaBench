
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0297_state {int dummy; } ;
struct dvb_frontend {struct stv0297_state* demodulator_priv; } ;


 int stv0297_writereg_mask (struct stv0297_state*,int,int,int) ;

__attribute__((used)) static int stv0297_sleep(struct dvb_frontend *fe)
{
 struct stv0297_state *state = fe->demodulator_priv;

 stv0297_writereg_mask(state, 0x80, 1, 1);

 return 0;
}

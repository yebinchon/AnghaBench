
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda10086_state {int dummy; } ;
struct dvb_frontend {struct tda10086_state* demodulator_priv; } ;


 int kfree (struct tda10086_state*) ;
 int tda10086_sleep (struct dvb_frontend*) ;

__attribute__((used)) static void tda10086_release(struct dvb_frontend* fe)
{
 struct tda10086_state *state = fe->demodulator_priv;
 tda10086_sleep(fe);
 kfree(state);
}

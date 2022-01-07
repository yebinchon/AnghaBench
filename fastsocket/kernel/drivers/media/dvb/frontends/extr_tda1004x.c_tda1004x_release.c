
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda1004x_state {int dummy; } ;
struct dvb_frontend {struct tda1004x_state* demodulator_priv; } ;


 int kfree (struct tda1004x_state*) ;

__attribute__((used)) static void tda1004x_release(struct dvb_frontend* fe)
{
 struct tda1004x_state *state = fe->demodulator_priv;
 kfree(state);
}

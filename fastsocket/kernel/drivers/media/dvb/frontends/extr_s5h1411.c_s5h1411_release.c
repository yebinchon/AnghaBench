
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5h1411_state {int dummy; } ;
struct dvb_frontend {struct s5h1411_state* demodulator_priv; } ;


 int kfree (struct s5h1411_state*) ;

__attribute__((used)) static void s5h1411_release(struct dvb_frontend *fe)
{
 struct s5h1411_state *state = fe->demodulator_priv;
 kfree(state);
}

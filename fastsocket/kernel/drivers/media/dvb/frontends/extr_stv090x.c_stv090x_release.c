
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv090x_state {scalar_t__ num_used; struct stv090x_state* internal; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;


 int FE_ERROR ;
 int dprintk (int ,int,char*) ;
 int kfree (struct stv090x_state*) ;
 int remove_dev (struct stv090x_state*) ;

__attribute__((used)) static void stv090x_release(struct dvb_frontend *fe)
{
 struct stv090x_state *state = fe->demodulator_priv;

 state->internal->num_used--;
 if (state->internal->num_used <= 0) {

  dprintk(FE_ERROR, 1, "Actually removing");

  remove_dev(state->internal);
  kfree(state->internal);
 }

 kfree(state);
}

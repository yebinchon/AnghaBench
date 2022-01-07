
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cinergyt2_fe_state* demodulator_priv; } ;
struct cinergyt2_fe_state {int dummy; } ;


 int kfree (struct cinergyt2_fe_state*) ;

__attribute__((used)) static void cinergyt2_fe_release(struct dvb_frontend *fe)
{
 struct cinergyt2_fe_state *state = fe->demodulator_priv;
 if (state != ((void*)0))
  kfree(state);
}

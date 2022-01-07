
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8261_state {int dummy; } ;
struct dvb_frontend {struct tda8261_state* tuner_priv; } ;


 int kfree (struct tda8261_state*) ;

__attribute__((used)) static int tda8261_release(struct dvb_frontend *fe)
{
 struct tda8261_state *state = fe->tuner_priv;

 fe->tuner_priv = ((void*)0);
 kfree(state);
 return 0;
}

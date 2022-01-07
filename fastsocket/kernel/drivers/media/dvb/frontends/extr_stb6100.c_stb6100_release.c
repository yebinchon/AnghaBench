
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb6100_state {int dummy; } ;
struct dvb_frontend {struct stb6100_state* tuner_priv; } ;


 int kfree (struct stb6100_state*) ;

__attribute__((used)) static int stb6100_release(struct dvb_frontend *fe)
{
 struct stb6100_state *state = fe->tuner_priv;

 fe->tuner_priv = ((void*)0);
 kfree(state);

 return 0;
}

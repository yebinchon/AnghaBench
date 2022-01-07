
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cx24113_state* tuner_priv; } ;
struct cx24113_state {int dummy; } ;


 int dprintk (char*) ;
 int kfree (struct cx24113_state*) ;

__attribute__((used)) static int cx24113_release(struct dvb_frontend *fe)
{
 struct cx24113_state *state = fe->tuner_priv;
 dprintk("\n");
 fe->tuner_priv = ((void*)0);
 kfree(state);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a20s_state {int dummy; } ;
struct dvb_frontend {struct mb86a20s_state* demodulator_priv; } ;


 int dprintk (char*) ;
 int kfree (struct mb86a20s_state*) ;

__attribute__((used)) static void mb86a20s_release(struct dvb_frontend *fe)
{
 struct mb86a20s_state *state = fe->demodulator_priv;

 dprintk("\n");

 kfree(state);
}

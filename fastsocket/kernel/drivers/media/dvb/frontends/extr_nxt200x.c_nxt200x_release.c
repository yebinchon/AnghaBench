
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt200x_state {int dummy; } ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; } ;


 int kfree (struct nxt200x_state*) ;

__attribute__((used)) static void nxt200x_release(struct dvb_frontend* fe)
{
 struct nxt200x_state* state = fe->demodulator_priv;
 kfree(state);
}

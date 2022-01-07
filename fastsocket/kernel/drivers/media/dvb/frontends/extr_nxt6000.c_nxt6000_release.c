
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;


 int kfree (struct nxt6000_state*) ;

__attribute__((used)) static void nxt6000_release(struct dvb_frontend* fe)
{
 struct nxt6000_state* state = fe->demodulator_priv;
 kfree(state);
}

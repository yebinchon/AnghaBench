
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;


 int nxt6000_reset (struct nxt6000_state*) ;
 int nxt6000_setup (struct dvb_frontend*) ;

__attribute__((used)) static int nxt6000_init(struct dvb_frontend* fe)
{
 struct nxt6000_state* state = fe->demodulator_priv;

 nxt6000_reset(state);
 nxt6000_setup(fe);

 return 0;
}

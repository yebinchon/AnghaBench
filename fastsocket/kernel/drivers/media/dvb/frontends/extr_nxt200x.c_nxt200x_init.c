
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt200x_state {int initialised; int demod_chip; } ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; } ;


 int EINVAL ;


 int nxt2002_init (struct dvb_frontend*) ;
 int nxt2004_init (struct dvb_frontend*) ;

__attribute__((used)) static int nxt200x_init(struct dvb_frontend* fe)
{
 struct nxt200x_state* state = fe->demodulator_priv;
 int ret = 0;

 if (!state->initialised) {
  switch (state->demod_chip) {
   case 129:
    ret = nxt2002_init(fe);
    break;
   case 128:
    ret = nxt2004_init(fe);
    break;
   default:
    return -EINVAL;
    break;
  }
  state->initialised = 1;
 }
 return ret;
}

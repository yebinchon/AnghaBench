
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mb86a16_state {int dummy; } ;
struct dvb_frontend {struct mb86a16_state* demodulator_priv; } ;


 int kfree (struct mb86a16_state*) ;

__attribute__((used)) static void mb86a16_release(struct dvb_frontend *fe)
{
 struct mb86a16_state *state = fe->demodulator_priv;
 kfree(state);
}

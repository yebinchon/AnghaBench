
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct or51132_state {int dummy; } ;
struct dvb_frontend {struct or51132_state* demodulator_priv; } ;


 int kfree (struct or51132_state*) ;

__attribute__((used)) static void or51132_release(struct dvb_frontend* fe)
{
 struct or51132_state* state = fe->demodulator_priv;
 kfree(state);
}

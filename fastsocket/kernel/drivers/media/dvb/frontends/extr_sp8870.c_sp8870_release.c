
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp8870_state {int dummy; } ;
struct dvb_frontend {struct sp8870_state* demodulator_priv; } ;


 int kfree (struct sp8870_state*) ;

__attribute__((used)) static void sp8870_release(struct dvb_frontend* fe)
{
 struct sp8870_state* state = fe->demodulator_priv;
 kfree(state);
}

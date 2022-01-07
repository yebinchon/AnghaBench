
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0299_state {int dummy; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;


 int kfree (struct stv0299_state*) ;

__attribute__((used)) static void stv0299_release(struct dvb_frontend* fe)
{
 struct stv0299_state* state = fe->demodulator_priv;
 kfree(state);
}

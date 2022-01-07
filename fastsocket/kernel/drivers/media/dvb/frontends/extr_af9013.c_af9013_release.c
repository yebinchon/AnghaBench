
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int dummy; } ;


 int kfree (struct af9013_state*) ;

__attribute__((used)) static void af9013_release(struct dvb_frontend *fe)
{
 struct af9013_state *state = fe->demodulator_priv;
 kfree(state);
}

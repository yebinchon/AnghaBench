
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt330x_state {int dummy; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;


 int kfree (struct lgdt330x_state*) ;

__attribute__((used)) static void lgdt330x_release(struct dvb_frontend* fe)
{
 struct lgdt330x_state* state = (struct lgdt330x_state*) fe->demodulator_priv;
 kfree(state);
}

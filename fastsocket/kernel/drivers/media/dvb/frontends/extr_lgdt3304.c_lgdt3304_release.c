
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lgdt3304_state {int dummy; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;


 int kfree (struct lgdt3304_state*) ;

__attribute__((used)) static void lgdt3304_release(struct dvb_frontend *fe)
{
 struct lgdt3304_state *state = (struct lgdt3304_state *)fe->demodulator_priv;
 kfree(state);
}

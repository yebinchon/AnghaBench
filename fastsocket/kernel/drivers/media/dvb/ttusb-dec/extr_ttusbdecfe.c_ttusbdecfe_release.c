
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusbdecfe_state {int dummy; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; } ;


 int kfree (struct ttusbdecfe_state*) ;

__attribute__((used)) static void ttusbdecfe_release(struct dvb_frontend* fe)
{
 struct ttusbdecfe_state* state = (struct ttusbdecfe_state*) fe->demodulator_priv;
 kfree(state);
}

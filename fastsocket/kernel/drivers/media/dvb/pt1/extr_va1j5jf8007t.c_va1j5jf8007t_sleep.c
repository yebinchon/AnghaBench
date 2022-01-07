
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va1j5jf8007t_state {int dummy; } ;
struct dvb_frontend {struct va1j5jf8007t_state* demodulator_priv; } ;


 int va1j5jf8007t_init_frequency (struct va1j5jf8007t_state*) ;
 int va1j5jf8007t_set_sleep (struct va1j5jf8007t_state*,int) ;

__attribute__((used)) static int va1j5jf8007t_sleep(struct dvb_frontend *fe)
{
 struct va1j5jf8007t_state *state;
 int ret;

 state = fe->demodulator_priv;

 ret = va1j5jf8007t_init_frequency(state);
 if (ret < 0)
  return ret;

 return va1j5jf8007t_set_sleep(state, 1);
}

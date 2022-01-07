
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va1j5jf8007s_state {int dummy; } ;
struct dvb_frontend {struct va1j5jf8007s_state* demodulator_priv; } ;


 int va1j5jf8007s_init_frequency (struct va1j5jf8007s_state*) ;
 int va1j5jf8007s_prepare_1 (struct va1j5jf8007s_state*) ;
 int va1j5jf8007s_prepare_2 (struct va1j5jf8007s_state*) ;

int va1j5jf8007s_prepare(struct dvb_frontend *fe)
{
 struct va1j5jf8007s_state *state;
 int ret;

 state = fe->demodulator_priv;

 ret = va1j5jf8007s_prepare_1(state);
 if (ret < 0)
  return ret;

 ret = va1j5jf8007s_prepare_2(state);
 if (ret < 0)
  return ret;

 return va1j5jf8007s_init_frequency(state);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va1j5jf8007s_state {int tune_state; } ;
struct dvb_frontend {struct va1j5jf8007s_state* demodulator_priv; } ;


 int VA1J5JF8007S_IDLE ;
 int va1j5jf8007s_set_sleep (struct va1j5jf8007s_state*,int ) ;

__attribute__((used)) static int va1j5jf8007s_init(struct dvb_frontend *fe)
{
 struct va1j5jf8007s_state *state;

 state = fe->demodulator_priv;
 state->tune_state = VA1J5JF8007S_IDLE;

 return va1j5jf8007s_set_sleep(state, 0);
}

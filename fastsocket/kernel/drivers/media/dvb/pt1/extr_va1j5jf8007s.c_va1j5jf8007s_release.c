
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va1j5jf8007s_state {int dummy; } ;
struct dvb_frontend {struct va1j5jf8007s_state* demodulator_priv; } ;


 int kfree (struct va1j5jf8007s_state*) ;

__attribute__((used)) static void va1j5jf8007s_release(struct dvb_frontend *fe)
{
 struct va1j5jf8007s_state *state;
 state = fe->demodulator_priv;
 kfree(state);
}

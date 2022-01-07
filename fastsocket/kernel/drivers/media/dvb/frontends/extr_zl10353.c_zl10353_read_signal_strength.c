
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct zl10353_state {int dummy; } ;
struct dvb_frontend {struct zl10353_state* demodulator_priv; } ;


 int AGC_GAIN_0 ;
 int AGC_GAIN_1 ;
 int zl10353_read_register (struct zl10353_state*,int ) ;

__attribute__((used)) static int zl10353_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct zl10353_state *state = fe->demodulator_priv;

 u16 signal = zl10353_read_register(state, AGC_GAIN_1) << 10 |
       zl10353_read_register(state, AGC_GAIN_0) << 2 | 3;

 *strength = ~signal;

 return 0;
}

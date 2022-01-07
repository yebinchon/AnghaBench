
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;


 int cx24123_readreg (struct cx24123_state*,int) ;
 int dprintk (char*,int) ;

__attribute__((used)) static int cx24123_read_signal_strength(struct dvb_frontend *fe,
 u16 *signal_strength)
{
 struct cx24123_state *state = fe->demodulator_priv;


 *signal_strength = cx24123_readreg(state, 0x3b) << 8;

 dprintk("Signal strength = %d\n", *signal_strength);

 return 0;
}

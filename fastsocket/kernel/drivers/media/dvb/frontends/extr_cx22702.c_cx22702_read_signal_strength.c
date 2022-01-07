
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct cx22702_state* demodulator_priv; } ;
struct cx22702_state {int dummy; } ;


 int cx22702_readreg (struct cx22702_state*,int) ;

__attribute__((used)) static int cx22702_read_signal_strength(struct dvb_frontend *fe,
 u16 *signal_strength)
{
 struct cx22702_state *state = fe->demodulator_priv;

 u16 rs_ber;
 rs_ber = cx22702_readreg(state, 0x23);
 *signal_strength = (rs_ber << 8) | rs_ber;

 return 0;
}

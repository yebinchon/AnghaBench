
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dvb_frontend {struct cx22702_state* demodulator_priv; } ;
struct cx22702_state {int dummy; } ;


 int cx22702_readreg (struct cx22702_state*,int) ;

__attribute__((used)) static int cx22702_read_ber(struct dvb_frontend *fe, u32 *ber)
{
 struct cx22702_state *state = fe->demodulator_priv;

 if (cx22702_readreg(state, 0xE4) & 0x02) {

  *ber = (cx22702_readreg(state, 0xDE) & 0x7F) << 7
   | (cx22702_readreg(state, 0xDF) & 0x7F);
 } else {

  *ber = (cx22702_readreg(state, 0xDE) & 0x7F) << 7
   | cx22702_readreg(state, 0xDF);
 }

 return 0;
}

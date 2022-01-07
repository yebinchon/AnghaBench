
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef short u16 ;
struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;


 int AGC_GAIN_1 ;
 int AGC_GAIN_2 ;
 int nxt6000_readreg (struct nxt6000_state*,int ) ;

__attribute__((used)) static int nxt6000_read_signal_strength(struct dvb_frontend* fe, u16* signal_strength)
{
 struct nxt6000_state* state = fe->demodulator_priv;

 *signal_strength = (short) (511 -
  (nxt6000_readreg(state, AGC_GAIN_1) +
  ((nxt6000_readreg(state, AGC_GAIN_2) & 0x03) << 8)));

 return 0;
}

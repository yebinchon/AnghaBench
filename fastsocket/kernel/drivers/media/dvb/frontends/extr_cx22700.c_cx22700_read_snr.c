
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dvb_frontend {struct cx22700_state* demodulator_priv; } ;
struct cx22700_state {int dummy; } ;


 int cx22700_readreg (struct cx22700_state*,int) ;

__attribute__((used)) static int cx22700_read_snr(struct dvb_frontend* fe, u16* snr)
{
 struct cx22700_state* state = fe->demodulator_priv;

 u16 rs_ber = (cx22700_readreg (state, 0x0d) << 9)
     | (cx22700_readreg (state, 0x0e) << 1);
 *snr = ~rs_ber;

 return 0;
}

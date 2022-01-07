
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0288_state {scalar_t__ errmode; } ;
struct dvb_frontend {struct stv0288_state* demodulator_priv; } ;


 scalar_t__ STATUS_BER ;
 int dprintk (char*,int) ;
 int stv0288_readreg (struct stv0288_state*,int) ;

__attribute__((used)) static int stv0288_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct stv0288_state *state = fe->demodulator_priv;

 if (state->errmode != STATUS_BER)
  return 0;
 *ucblocks = (stv0288_readreg(state, 0x26) << 8) |
     stv0288_readreg(state, 0x27);
 dprintk("stv0288_read_ber %d\n", *ucblocks);

 return 0;
}

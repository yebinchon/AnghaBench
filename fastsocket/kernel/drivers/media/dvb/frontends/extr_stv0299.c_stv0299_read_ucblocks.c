
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0299_state {scalar_t__ errmode; int ucblocks; } ;
struct dvb_frontend {struct stv0299_state* demodulator_priv; } ;


 int ENOSYS ;
 scalar_t__ STATUS_UCBLOCKS ;
 int stv0299_readreg (struct stv0299_state*,int) ;

__attribute__((used)) static int stv0299_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct stv0299_state* state = fe->demodulator_priv;

 if (state->errmode != STATUS_UCBLOCKS)
  return -ENOSYS;

 state->ucblocks += stv0299_readreg(state, 0x1e);
 state->ucblocks += (stv0299_readreg(state, 0x1d) << 8);
 *ucblocks = state->ucblocks;

 return 0;
}

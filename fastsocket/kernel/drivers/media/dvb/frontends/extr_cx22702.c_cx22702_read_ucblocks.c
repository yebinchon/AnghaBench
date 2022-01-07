
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct dvb_frontend {struct cx22702_state* demodulator_priv; } ;
struct cx22702_state {scalar_t__ prevUCBlocks; } ;


 scalar_t__ cx22702_readreg (struct cx22702_state*,int) ;

__attribute__((used)) static int cx22702_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct cx22702_state *state = fe->demodulator_priv;

 u8 _ucblocks;


 _ucblocks = cx22702_readreg(state, 0xE3);
 if (state->prevUCBlocks < _ucblocks)
  *ucblocks = (_ucblocks - state->prevUCBlocks);
 else
  *ucblocks = state->prevUCBlocks - _ucblocks;
 state->prevUCBlocks = _ucblocks;

 return 0;
}

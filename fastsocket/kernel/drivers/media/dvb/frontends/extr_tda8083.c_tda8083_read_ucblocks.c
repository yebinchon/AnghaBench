
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;


 int tda8083_readreg (struct tda8083_state*,int) ;

__attribute__((used)) static int tda8083_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct tda8083_state* state = fe->demodulator_priv;

 *ucblocks = tda8083_readreg(state, 0x0f);
 if (*ucblocks == 0xff)
  *ucblocks = 0xffffffff;

 return 0;
}

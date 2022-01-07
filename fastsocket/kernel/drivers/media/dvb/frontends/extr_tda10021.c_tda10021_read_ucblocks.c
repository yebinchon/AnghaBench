
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tda10021_state {int dummy; } ;
struct dvb_frontend {struct tda10021_state* demodulator_priv; } ;


 int _tda10021_writereg (struct tda10021_state*,int,int) ;
 int* tda10021_inittab ;
 int tda10021_readreg (struct tda10021_state*,int) ;

__attribute__((used)) static int tda10021_read_ucblocks(struct dvb_frontend* fe, u32* ucblocks)
{
 struct tda10021_state* state = fe->demodulator_priv;

 *ucblocks = tda10021_readreg (state, 0x13) & 0x7f;
 if (*ucblocks == 0x7f)
  *ucblocks = 0xffffffff;


 _tda10021_writereg (state, 0x10, tda10021_inittab[0x10] & 0xdf);
 _tda10021_writereg (state, 0x10, tda10021_inittab[0x10]);

 return 0;
}

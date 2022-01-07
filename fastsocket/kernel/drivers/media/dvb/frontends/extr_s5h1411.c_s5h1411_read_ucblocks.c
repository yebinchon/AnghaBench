
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5h1411_state {int dummy; } ;
struct dvb_frontend {struct s5h1411_state* demodulator_priv; } ;


 int S5H1411_I2C_TOP_ADDR ;
 int s5h1411_readreg (struct s5h1411_state*,int ,int) ;

__attribute__((used)) static int s5h1411_read_ucblocks(struct dvb_frontend *fe, u32 *ucblocks)
{
 struct s5h1411_state *state = fe->demodulator_priv;

 *ucblocks = s5h1411_readreg(state, S5H1411_I2C_TOP_ADDR, 0xc9);

 return 0;
}

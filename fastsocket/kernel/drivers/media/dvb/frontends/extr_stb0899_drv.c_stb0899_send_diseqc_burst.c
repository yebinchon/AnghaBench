
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stb0899_state {int dummy; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef int fe_sec_mini_cmd_t ;


 int DISEQCMODE ;
 int DISPRECHARGE ;
 int ETIMEDOUT ;


 int STB0899_DISCNTRL1 ;
 int STB0899_DISFIFO ;
 int STB0899_SETFIELD_VAL (int ,int,int) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 scalar_t__ stb0899_wait_diseqc_txidle (struct stb0899_state*,int) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;

__attribute__((used)) static int stb0899_send_diseqc_burst(struct dvb_frontend *fe, fe_sec_mini_cmd_t burst)
{
 struct stb0899_state *state = fe->demodulator_priv;
 u8 reg, old_state;


 if (stb0899_wait_diseqc_txidle(state, 100) < 0)
  return -ETIMEDOUT;

 reg = stb0899_read_reg(state, STB0899_DISCNTRL1);
 old_state = reg;

 STB0899_SETFIELD_VAL(DISEQCMODE, reg, 0x03);
 STB0899_SETFIELD_VAL(DISPRECHARGE, reg, 0x01);
 stb0899_write_reg(state, STB0899_DISCNTRL1, reg);
 switch (burst) {
 case 129:

  stb0899_write_reg(state, STB0899_DISFIFO, 0x00);
  break;
 case 128:

  stb0899_write_reg(state, STB0899_DISFIFO, 0xff);
  break;
 }
 reg = stb0899_read_reg(state, STB0899_DISCNTRL1);
 STB0899_SETFIELD_VAL(DISPRECHARGE, reg, 0x00);
 stb0899_write_reg(state, STB0899_DISCNTRL1, reg);

 if (stb0899_wait_diseqc_txidle(state, 100) < 0)
  return -ETIMEDOUT;


 stb0899_write_reg(state, STB0899_DISCNTRL1, old_state);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int dummy; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int STB0899_POSTPROC_GPIO_POWER ;
 int STB0899_SELOSCI ;
 int STB0899_STOPCLK1 ;
 int STB0899_STOPCLK2 ;
 int STB0899_SYNTCTRL ;
 int stb0899_postproc (struct stb0899_state*,int ,int) ;
 int stb0899_write_reg (struct stb0899_state*,int ,int) ;

__attribute__((used)) static int stb0899_wakeup(struct dvb_frontend *fe)
{
 int rc;
 struct stb0899_state *state = fe->demodulator_priv;

 if ((rc = stb0899_write_reg(state, STB0899_SYNTCTRL, STB0899_SELOSCI)))
  return rc;

 if ((rc = stb0899_write_reg(state, STB0899_STOPCLK1, 0x00)))
  return rc;
 if ((rc = stb0899_write_reg(state, STB0899_STOPCLK2, 0x00)))
  return rc;


 stb0899_postproc(state, STB0899_POSTPROC_GPIO_POWER, 1);

 return 0;
}

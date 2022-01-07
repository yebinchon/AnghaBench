
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv090x_state {scalar_t__ device; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;


 int ADC1_PON_FIELD ;
 int FE_DEBUG ;
 int FE_ERROR ;
 int STANDBY_FIELD ;
 scalar_t__ STV0900 ;
 int STV090x_SETFIELD (int ,int ,int) ;
 int STV090x_SYNTCTRL ;
 int STV090x_TSTTNR1 ;
 int dprintk (int ,int,char*,...) ;
 int stv090x_read_reg (struct stv090x_state*,int ) ;
 scalar_t__ stv090x_write_reg (struct stv090x_state*,int ,int ) ;

__attribute__((used)) static int stv090x_wakeup(struct dvb_frontend *fe)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg;

 dprintk(FE_DEBUG, 1, "Wake %s from standby",
  state->device == STV0900 ? "STV0900" : "STV0903");

 reg = stv090x_read_reg(state, STV090x_SYNTCTRL);
 STV090x_SETFIELD(reg, STANDBY_FIELD, 0x00);
 if (stv090x_write_reg(state, STV090x_SYNTCTRL, reg) < 0)
  goto err;

 reg = stv090x_read_reg(state, STV090x_TSTTNR1);
 STV090x_SETFIELD(reg, ADC1_PON_FIELD, 1);
 if (stv090x_write_reg(state, STV090x_TSTTNR1, reg) < 0)
  goto err;

 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}

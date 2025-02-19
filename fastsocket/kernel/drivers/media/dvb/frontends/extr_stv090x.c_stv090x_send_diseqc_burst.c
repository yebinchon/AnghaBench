
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct stv090x_state {TYPE_1__* config; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
typedef scalar_t__ fe_sec_mini_cmd_t ;
struct TYPE_2__ {scalar_t__ diseqc_envelope_mode; } ;


 int DISEQC_RESET_FIELD ;
 int DISTXCTL ;
 int DISTXDATA ;
 int DISTXSTATUS ;
 int DISTX_MODE_FIELD ;
 int DIS_PRECHARGE_FIELD ;
 int FE_ERROR ;
 int FIFO_FULL_FIELD ;
 scalar_t__ SEC_MINI_A ;
 int STV090x_GETFIELD_Px (int,int ) ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int,int ,int) ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int) ;
 int TX_IDLE_FIELD ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;

__attribute__((used)) static int stv090x_send_diseqc_burst(struct dvb_frontend *fe, fe_sec_mini_cmd_t burst)
{
 struct stv090x_state *state = fe->demodulator_priv;
 u32 reg, idle = 0, fifo_full = 1;
 u8 mode, value;
 int i;

 reg = STV090x_READ_DEMOD(state, DISTXCTL);

 if (burst == SEC_MINI_A) {
  mode = (state->config->diseqc_envelope_mode) ? 5 : 3;
  value = 0x00;
 } else {
  mode = (state->config->diseqc_envelope_mode) ? 4 : 2;
  value = 0xFF;
 }

 STV090x_SETFIELD_Px(reg, DISTX_MODE_FIELD, mode);
 STV090x_SETFIELD_Px(reg, DISEQC_RESET_FIELD, 1);
 if (STV090x_WRITE_DEMOD(state, DISTXCTL, reg) < 0)
  goto err;
 STV090x_SETFIELD_Px(reg, DISEQC_RESET_FIELD, 0);
 if (STV090x_WRITE_DEMOD(state, DISTXCTL, reg) < 0)
  goto err;

 STV090x_SETFIELD_Px(reg, DIS_PRECHARGE_FIELD, 1);
 if (STV090x_WRITE_DEMOD(state, DISTXCTL, reg) < 0)
  goto err;

 while (fifo_full) {
  reg = STV090x_READ_DEMOD(state, DISTXSTATUS);
  fifo_full = STV090x_GETFIELD_Px(reg, FIFO_FULL_FIELD);
 }

 if (STV090x_WRITE_DEMOD(state, DISTXDATA, value) < 0)
  goto err;

 reg = STV090x_READ_DEMOD(state, DISTXCTL);
 STV090x_SETFIELD_Px(reg, DIS_PRECHARGE_FIELD, 0);
 if (STV090x_WRITE_DEMOD(state, DISTXCTL, reg) < 0)
  goto err;

 i = 0;

 while ((!idle) && (i < 10)) {
  reg = STV090x_READ_DEMOD(state, DISTXSTATUS);
  idle = STV090x_GETFIELD_Px(reg, TX_IDLE_FIELD);
  msleep(10);
  i++;
 }

 return 0;
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}

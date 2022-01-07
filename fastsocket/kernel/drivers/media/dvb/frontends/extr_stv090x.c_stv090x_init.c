
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stv090x_state {int rolloff; int inversion; int demod_mode; TYPE_1__* internal; struct stv090x_config* config; } ;
struct stv090x_config {scalar_t__ (* tuner_init ) (struct dvb_frontend*) ;int clk_mode; scalar_t__ (* tuner_set_mode ) (struct dvb_frontend*,int ) ;int xtal; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;
struct TYPE_2__ {scalar_t__ mclk; } ;


 int DEMOD ;
 int FE_ERROR ;
 int ROLLOFF_CONTROL_FIELD ;
 int STV090x_READ_DEMOD (struct stv090x_state*,int ) ;
 int STV090x_SETFIELD_Px (int ,int ,int ) ;
 int STV090x_SYNTCTRL ;
 scalar_t__ STV090x_WRITE_DEMOD (struct stv090x_state*,int ,int ) ;
 int TNRCFG2 ;
 int TUNER_WAKE ;
 int TUN_IQSWAP_FIELD ;
 int dprintk (int ,int,char*) ;
 int msleep (int) ;
 scalar_t__ stub1 (struct dvb_frontend*) ;
 scalar_t__ stub2 (struct dvb_frontend*,int ) ;
 scalar_t__ stub3 (struct dvb_frontend*) ;
 int stv090x_get_mclk (struct stv090x_state*) ;
 scalar_t__ stv090x_i2c_gate_ctrl (struct stv090x_state*,int) ;
 scalar_t__ stv090x_ldpc_mode (struct stv090x_state*,int ) ;
 int stv090x_set_mclk (struct stv090x_state*,int,int ) ;
 scalar_t__ stv090x_set_tspath (struct stv090x_state*) ;
 scalar_t__ stv090x_wakeup (struct dvb_frontend*) ;
 scalar_t__ stv090x_write_reg (struct stv090x_state*,int ,int) ;

__attribute__((used)) static int stv090x_init(struct dvb_frontend *fe)
{
 struct stv090x_state *state = fe->demodulator_priv;
 const struct stv090x_config *config = state->config;
 u32 reg;

 if (state->internal->mclk == 0) {



  if (stv090x_i2c_gate_ctrl(state, 1) < 0)
   goto err;

  if (config->tuner_init) {
   if (config->tuner_init(fe) < 0)
    goto err_gateoff;
  }

  if (stv090x_i2c_gate_ctrl(state, 0) < 0)
   goto err;

  stv090x_set_mclk(state, 135000000, config->xtal);
  msleep(5);
  if (stv090x_write_reg(state, STV090x_SYNTCTRL,
          0x20 | config->clk_mode) < 0)
   goto err;
  stv090x_get_mclk(state);
 }

 if (stv090x_wakeup(fe) < 0) {
  dprintk(FE_ERROR, 1, "Error waking device");
  goto err;
 }

 if (stv090x_ldpc_mode(state, state->demod_mode) < 0)
  goto err;

 reg = STV090x_READ_DEMOD(state, TNRCFG2);
 STV090x_SETFIELD_Px(reg, TUN_IQSWAP_FIELD, state->inversion);
 if (STV090x_WRITE_DEMOD(state, TNRCFG2, reg) < 0)
  goto err;
 reg = STV090x_READ_DEMOD(state, DEMOD);
 STV090x_SETFIELD_Px(reg, ROLLOFF_CONTROL_FIELD, state->rolloff);
 if (STV090x_WRITE_DEMOD(state, DEMOD, reg) < 0)
  goto err;

 if (stv090x_i2c_gate_ctrl(state, 1) < 0)
  goto err;

 if (config->tuner_set_mode) {
  if (config->tuner_set_mode(fe, TUNER_WAKE) < 0)
   goto err_gateoff;
 }

 if (config->tuner_init) {
  if (config->tuner_init(fe) < 0)
   goto err_gateoff;
 }

 if (stv090x_i2c_gate_ctrl(state, 0) < 0)
  goto err;

 if (stv090x_set_tspath(state) < 0)
  goto err;

 return 0;

err_gateoff:
 stv090x_i2c_gate_ctrl(state, 0);
err:
 dprintk(FE_ERROR, 1, "I/O error");
 return -1;
}

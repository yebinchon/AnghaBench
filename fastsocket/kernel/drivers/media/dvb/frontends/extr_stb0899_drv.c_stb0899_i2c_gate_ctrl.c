
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stb0899_state {int verbose; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;


 int EREMOTEIO ;
 int FE_DEBUG ;
 int FE_ERROR ;
 int STB0899_I2CRPT ;
 int STB0899_I2CTON ;
 int dprintk (int ,int ,int,char*) ;
 int stb0899_read_reg (struct stb0899_state*,int ) ;
 scalar_t__ stb0899_write_reg (struct stb0899_state*,int ,int) ;

int stb0899_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 int i2c_stat;
 struct stb0899_state *state = fe->demodulator_priv;

 i2c_stat = stb0899_read_reg(state, STB0899_I2CRPT);
 if (i2c_stat < 0)
  goto err;

 if (enable) {
  dprintk(state->verbose, FE_DEBUG, 1, "Enabling I2C Repeater ...");
  i2c_stat |= STB0899_I2CTON;
  if (stb0899_write_reg(state, STB0899_I2CRPT, i2c_stat) < 0)
   goto err;
 } else {
  dprintk(state->verbose, FE_DEBUG, 1, "Disabling I2C Repeater ...");
  i2c_stat &= ~STB0899_I2CTON;
  if (stb0899_write_reg(state, STB0899_I2CRPT, i2c_stat) < 0)
   goto err;
 }
 return 0;
err:
 dprintk(state->verbose, FE_ERROR, 1, "I2C Repeater control failed");
 return -EREMOTEIO;
}

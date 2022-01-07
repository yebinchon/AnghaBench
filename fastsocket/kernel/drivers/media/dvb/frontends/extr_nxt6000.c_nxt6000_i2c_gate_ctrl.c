
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nxt6000_state {int dummy; } ;
struct dvb_frontend {struct nxt6000_state* demodulator_priv; } ;


 int ENABLE_TUNER_IIC ;
 int nxt6000_writereg (struct nxt6000_state*,int ,int) ;

__attribute__((used)) static int nxt6000_i2c_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct nxt6000_state* state = fe->demodulator_priv;

 if (enable) {
  return nxt6000_writereg(state, ENABLE_TUNER_IIC, 0x01);
 } else {
  return nxt6000_writereg(state, ENABLE_TUNER_IIC, 0x00);
 }
}

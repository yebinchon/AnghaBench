
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sp8870_state {int dummy; } ;
struct dvb_frontend {struct sp8870_state* demodulator_priv; } ;


 int sp8870_writereg (struct sp8870_state*,int,int) ;

__attribute__((used)) static int sp8870_i2c_gate_ctrl(struct dvb_frontend* fe, int enable)
{
 struct sp8870_state* state = fe->demodulator_priv;

 if (enable) {
  return sp8870_writereg(state, 0x206, 0x001);
 } else {
  return sp8870_writereg(state, 0x206, 0x000);
 }
}

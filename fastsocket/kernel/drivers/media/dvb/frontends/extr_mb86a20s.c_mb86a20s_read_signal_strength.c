
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u16 ;
struct mb86a20s_state {int dummy; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct mb86a20s_state* demodulator_priv; } ;


 int dprintk (char*,...) ;
 int mb86a20s_readreg (struct mb86a20s_state*,int) ;
 int mb86a20s_writereg (struct mb86a20s_state*,int,unsigned int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mb86a20s_read_signal_strength(struct dvb_frontend *fe, u16 *strength)
{
 struct mb86a20s_state *state = fe->demodulator_priv;
 unsigned rf_max, rf_min, rf;
 u8 val;

 dprintk("\n");

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);


 rf_max = 0xfff;
 rf_min = 0;
 do {
  rf = (rf_max + rf_min) / 2;
  mb86a20s_writereg(state, 0x04, 0x1f);
  mb86a20s_writereg(state, 0x05, rf >> 8);
  mb86a20s_writereg(state, 0x04, 0x20);
  mb86a20s_writereg(state, 0x04, rf);

  val = mb86a20s_readreg(state, 0x02);
  if (val & 0x08)
   rf_min = (rf_max + rf_min) / 2;
  else
   rf_max = (rf_max + rf_min) / 2;
  if (rf_max - rf_min < 4) {
   *strength = (((rf_max + rf_min) / 2) * 65535) / 4095;
   break;
  }
 } while (1);

 dprintk("signal strength = %d\n", *strength);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 return 0;
}

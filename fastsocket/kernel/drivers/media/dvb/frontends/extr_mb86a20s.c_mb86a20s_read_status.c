
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mb86a20s_state {int dummy; } ;
struct TYPE_2__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct mb86a20s_state* demodulator_priv; } ;
typedef int fe_status_t ;


 int FE_HAS_CARRIER ;
 int FE_HAS_LOCK ;
 int FE_HAS_SIGNAL ;
 int FE_HAS_SYNC ;
 int FE_HAS_VITERBI ;
 int dprintk (char*,...) ;
 int mb86a20s_readreg (struct mb86a20s_state*,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int mb86a20s_read_status(struct dvb_frontend *fe, fe_status_t *status)
{
 struct mb86a20s_state *state = fe->demodulator_priv;
 u8 val;

 dprintk("\n");
 *status = 0;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);
 val = mb86a20s_readreg(state, 0x0a) & 0xf;
 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);

 if (val >= 2)
  *status |= FE_HAS_SIGNAL;

 if (val >= 4)
  *status |= FE_HAS_CARRIER;

 if (val >= 5)
  *status |= FE_HAS_VITERBI;

 if (val >= 7)
  *status |= FE_HAS_SYNC;

 if (val >= 8)
  *status |= FE_HAS_LOCK;

 dprintk("val = %d, status = 0x%02x\n", val, *status);

 return 0;
}

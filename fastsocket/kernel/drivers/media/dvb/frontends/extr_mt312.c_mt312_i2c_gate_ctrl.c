
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt312_state {int id; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;


 int GPP_CTRL ;

 int mt312_readreg (struct mt312_state*,int ,int*) ;
 int mt312_writereg (struct mt312_state*,int ,int) ;

__attribute__((used)) static int mt312_i2c_gate_ctrl(struct dvb_frontend *fe, int enable)
{
 struct mt312_state *state = fe->demodulator_priv;

 u8 val = 0x00;
 int ret;

 switch (state->id) {
 case 128:
  ret = mt312_readreg(state, GPP_CTRL, &val);
  if (ret < 0)
   goto error;


  val &= 0x80;
  break;
 }

 if (enable)
  val |= 0x40;
 else
  val &= ~0x40;

 ret = mt312_writereg(state, GPP_CTRL, val);

error:
 return ret;
}

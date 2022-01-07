
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt312_state {scalar_t__ id; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;


 int CONFIG ;
 int GPP_CTRL ;
 int HW_CTRL ;
 scalar_t__ ID_ZL10313 ;
 int mt312_readreg (struct mt312_state*,int ,int*) ;
 int mt312_reset (struct mt312_state*,int) ;
 int mt312_writereg (struct mt312_state*,int ,int) ;

__attribute__((used)) static int mt312_sleep(struct dvb_frontend *fe)
{
 struct mt312_state *state = fe->demodulator_priv;
 int ret;
 u8 config;


 ret = mt312_reset(state, 1);
 if (ret < 0)
  return ret;

 if (state->id == ID_ZL10313) {

  ret = mt312_writereg(state, GPP_CTRL, 0x00);
  if (ret < 0)
   return ret;


  ret = mt312_writereg(state, HW_CTRL, 0x0d);
  if (ret < 0)
   return ret;
 }

 ret = mt312_readreg(state, CONFIG, &config);
 if (ret < 0)
  return ret;


 ret = mt312_writereg(state, CONFIG, config & 0x7f);
 if (ret < 0)
  return ret;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mt312_state {int freq_mult; int id; int xtal; } ;
struct dvb_frontend {struct mt312_state* demodulator_priv; } ;
typedef int buf_def ;
typedef int buf ;


 int CONFIG ;
 int CS_SW_LIM ;
 int GPP_CTRL ;
 int HW_CTRL ;

 int MPEG_CTRL ;
 int OP_CTRL ;
 int SNR_THS_HIGH ;
 int SYS_CLK ;
 int TS_SW_LIM_L ;
 int VIT_SETUP ;
 int mt312_div (int,int) ;
 int mt312_reset (struct mt312_state*,int) ;
 int mt312_write (struct mt312_state*,int ,int*,int) ;
 int mt312_writereg (struct mt312_state*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int mt312_initfe(struct dvb_frontend *fe)
{
 struct mt312_state *state = fe->demodulator_priv;
 int ret;
 u8 buf[2];


 ret = mt312_writereg(state, CONFIG,
   (state->freq_mult == 6 ? 0x88 : 0x8c));
 if (ret < 0)
  return ret;


 udelay(150);


 ret = mt312_reset(state, 1);
 if (ret < 0)
  return ret;



 {
  u8 buf_def[8] = { 0x14, 0x12, 0x03, 0x02,
      0x01, 0x00, 0x00, 0x00 };

  ret = mt312_write(state, VIT_SETUP, buf_def, sizeof(buf_def));
  if (ret < 0)
   return ret;
 }

 switch (state->id) {
 case 128:

  ret = mt312_writereg(state, GPP_CTRL, 0x80);
  if (ret < 0)
   return ret;


  buf[0] = 0x80;
  buf[1] = 0xB0;
  ret = mt312_write(state, HW_CTRL, buf, 2);
  if (ret < 0)
   return ret;


  ret = mt312_writereg(state, HW_CTRL, 0x00);
  if (ret < 0)
   return ret;

  ret = mt312_writereg(state, MPEG_CTRL, 0x00);
  if (ret < 0)
   return ret;

  break;
 }


 buf[0] = mt312_div(state->xtal * state->freq_mult * 2, 1000000);


 buf[1] = mt312_div(state->xtal, 22000 * 4);

 ret = mt312_write(state, SYS_CLK, buf, sizeof(buf));
 if (ret < 0)
  return ret;

 ret = mt312_writereg(state, SNR_THS_HIGH, 0x32);
 if (ret < 0)
  return ret;


 switch (state->id) {
 case 128:
  buf[0] = 0x33;
  break;
 default:
  buf[0] = 0x53;
  break;
 }

 ret = mt312_writereg(state, OP_CTRL, buf[0]);
 if (ret < 0)
  return ret;


 buf[0] = 0x8c;
 buf[1] = 0x98;

 ret = mt312_write(state, TS_SW_LIM_L, buf, sizeof(buf));
 if (ret < 0)
  return ret;

 ret = mt312_writereg(state, CS_SW_LIM, 0x69);
 if (ret < 0)
  return ret;

 return 0;
}

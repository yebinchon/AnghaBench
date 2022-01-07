
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qt1010_priv {int frequency; int reg1f_init_val; int reg20_init_val; int reg25_init_val; int bandwidth; } ;
struct TYPE_8__ {int bandwidth; } ;
struct TYPE_9__ {TYPE_2__ ofdm; } ;
struct dvb_frontend_parameters {int frequency; TYPE_3__ u; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_10__ {int (* i2c_gate_ctrl ) (struct dvb_frontend*,int) ;TYPE_1__ info; } ;
struct dvb_frontend {TYPE_4__ ops; struct qt1010_priv* tuner_priv; } ;
struct TYPE_11__ {scalar_t__ member_0; int member_1; int member_2; int val; scalar_t__ oper; int reg; } ;
typedef TYPE_5__ qt1010_i2c_oper_t ;


 int ARRAY_SIZE (TYPE_5__*) ;
 scalar_t__ FE_OFDM ;
 int FREQ1 ;
 int FREQ2 ;
 int QT1010_OFFSET ;
 scalar_t__ QT1010_RD ;
 int QT1010_STEP ;
 scalar_t__ QT1010_WR ;
 scalar_t__ debug ;
 int dprintk (char*,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int) ;
 int qt1010_dump_regs (struct qt1010_priv*) ;
 int qt1010_readreg (struct qt1010_priv*,int ,int*) ;
 int qt1010_writereg (struct qt1010_priv*,int ,int) ;
 int stub1 (struct dvb_frontend*,int) ;
 int stub2 (struct dvb_frontend*,int) ;

__attribute__((used)) static int qt1010_set_params(struct dvb_frontend *fe,
        struct dvb_frontend_parameters *params)
{
 struct qt1010_priv *priv;
 int err;
 u32 freq, div, mod1, mod2;
 u8 i, tmpval, reg05;
 qt1010_i2c_oper_t rd[48] = {
  { QT1010_WR, 0x01, 0x80 },
  { QT1010_WR, 0x02, 0x3f },
  { QT1010_WR, 0x05, 0xff },
  { QT1010_WR, 0x06, 0x44 },
  { QT1010_WR, 0x07, 0xff },
  { QT1010_WR, 0x08, 0x08 },
  { QT1010_WR, 0x09, 0xff },
  { QT1010_WR, 0x0a, 0xff },
  { QT1010_WR, 0x0b, 0xff },
  { QT1010_WR, 0x0c, 0xe1 },
  { QT1010_WR, 0x1a, 0xff },
  { QT1010_WR, 0x1b, 0x00 },
  { QT1010_WR, 0x1c, 0x89 },
  { QT1010_WR, 0x11, 0xff },
  { QT1010_WR, 0x12, 0xff },
  { QT1010_WR, 0x22, 0xff },
  { QT1010_WR, 0x1e, 0x00 },
  { QT1010_WR, 0x1e, 0xd0 },
  { QT1010_RD, 0x22, 0xff },
  { QT1010_WR, 0x1e, 0x00 },
  { QT1010_RD, 0x05, 0xff },
  { QT1010_RD, 0x22, 0xff },
  { QT1010_WR, 0x23, 0xd0 },
  { QT1010_WR, 0x1e, 0x00 },
  { QT1010_WR, 0x1e, 0xe0 },
  { QT1010_RD, 0x23, 0xff },
  { QT1010_RD, 0x23, 0xff },
  { QT1010_WR, 0x1e, 0x00 },
  { QT1010_WR, 0x24, 0xd0 },
  { QT1010_WR, 0x1e, 0x00 },
  { QT1010_WR, 0x1e, 0xf0 },
  { QT1010_RD, 0x24, 0xff },
  { QT1010_WR, 0x1e, 0x00 },
  { QT1010_WR, 0x14, 0x7f },
  { QT1010_WR, 0x15, 0x7f },
  { QT1010_WR, 0x05, 0xff },
  { QT1010_WR, 0x06, 0x00 },
  { QT1010_WR, 0x15, 0x1f },
  { QT1010_WR, 0x16, 0xff },
  { QT1010_WR, 0x18, 0xff },
  { QT1010_WR, 0x1f, 0xff },
  { QT1010_WR, 0x20, 0xff },
  { QT1010_WR, 0x21, 0x53 },
  { QT1010_WR, 0x25, 0xff },
  { QT1010_WR, 0x26, 0x15 },
  { QT1010_WR, 0x00, 0xff },
  { QT1010_WR, 0x02, 0x00 },
  { QT1010_WR, 0x01, 0x00 }
 };




 priv = fe->tuner_priv;
 freq = params->frequency;
 div = (freq + QT1010_OFFSET) / QT1010_STEP;
 freq = (div * QT1010_STEP) - QT1010_OFFSET;
 mod1 = (freq + QT1010_OFFSET) % 32000000;
 mod2 = (freq + QT1010_OFFSET) % 4000000;
 priv->bandwidth =
  (fe->ops.info.type == FE_OFDM) ? params->u.ofdm.bandwidth : 0;
 priv->frequency = freq;

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 1);


 if (freq < 290000000) reg05 = 0x14;
 else if (freq < 610000000) reg05 = 0x34;
 else if (freq < 802000000) reg05 = 0x54;
 else reg05 = 0x74;


 rd[2].val = reg05;


 rd[4].val = (freq + QT1010_OFFSET) / 32000000;


 if (mod1 < 8000000) rd[6].val = 0x1d;
 else rd[6].val = 0x1c;


 if (mod1 < 1*4000000) rd[7].val = 0x09;
 else if (mod1 < 2*4000000) rd[7].val = 0x08;
 else if (mod1 < 3*4000000) rd[7].val = 0x0f;
 else if (mod1 < 4*4000000) rd[7].val = 0x0e;
 else if (mod1 < 5*4000000) rd[7].val = 0x0d;
 else if (mod1 < 6*4000000) rd[7].val = 0x0c;
 else if (mod1 < 7*4000000) rd[7].val = 0x0b;
 else rd[7].val = 0x0a;


 if (mod2 < 2000000) rd[8].val = 0x45;
 else rd[8].val = 0x44;


 tmpval = 0x78;
 rd[10].val = tmpval-((mod2/QT1010_STEP)*0x08);


 rd[13].val = 0xfd;


 rd[14].val = 0x91;


 if (freq < 450000000) rd[15].val = 0xd0;
 else if (freq < 482000000) rd[15].val = 0xd1;
 else if (freq < 514000000) rd[15].val = 0xd4;
 else if (freq < 546000000) rd[15].val = 0xd7;
 else if (freq < 610000000) rd[15].val = 0xda;
 else rd[15].val = 0xd0;


 rd[35].val = (reg05 & 0xf0);


 if (mod1 < 8000000) tmpval = 0x00;
 else if (mod1 < 12000000) tmpval = 0x01;
 else if (mod1 < 16000000) tmpval = 0x02;
 else if (mod1 < 24000000) tmpval = 0x03;
 else if (mod1 < 28000000) tmpval = 0x04;
 else tmpval = 0x05;
 rd[40].val = (priv->reg1f_init_val + 0x0e + tmpval);


 if (mod1 < 8000000) tmpval = 0x00;
 else if (mod1 < 12000000) tmpval = 0x01;
 else if (mod1 < 20000000) tmpval = 0x02;
 else if (mod1 < 24000000) tmpval = 0x03;
 else if (mod1 < 28000000) tmpval = 0x04;
 else tmpval = 0x05;
 rd[41].val = (priv->reg20_init_val + 0x0d + tmpval);


 rd[43].val = priv->reg25_init_val;


 rd[45].val = 0x92;

 dprintk("freq:%u 05:%02x 07:%02x 09:%02x 0a:%02x 0b:%02x " "1a:%02x 11:%02x 12:%02x 22:%02x 05:%02x 1f:%02x " "20:%02x 25:%02x 00:%02x", freq, rd[2].val, rd[4].val, rd[6].val, rd[7].val, rd[8].val, rd[10].val, rd[13].val, rd[14].val, rd[15].val, rd[35].val, rd[40].val, rd[41].val, rd[43].val, rd[45].val);






 for (i = 0; i < ARRAY_SIZE(rd); i++) {
  if (rd[i].oper == QT1010_WR) {
   err = qt1010_writereg(priv, rd[i].reg, rd[i].val);
  } else {
   err = qt1010_readreg(priv, rd[i].reg, &tmpval);
  }
  if (err) return err;
 }

 if (debug)
  qt1010_dump_regs(priv);

 if (fe->ops.i2c_gate_ctrl)
  fe->ops.i2c_gate_ctrl(fe, 0);

 return 0;
}

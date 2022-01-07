
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int volume_left; int volume_right; } ;
struct av7110 {int adac_type; TYPE_1__ mixer; } ;






 int MSP_WR_DSP ;
 int SendDAC (struct av7110*,int,int) ;
 int dprintk (int,char*,struct av7110*) ;
 int i2c_writereg (struct av7110*,int,int,int) ;
 int msp_writereg (struct av7110*,int ,int,int) ;

int av7110_set_volume(struct av7110 *av7110, int volleft, int volright)
{
 int err, vol, val, balance = 0;

 dprintk(2, "av7110:%p, \n", av7110);

 av7110->mixer.volume_left = volleft;
 av7110->mixer.volume_right = volright;

 switch (av7110->adac_type) {
 case 128:
  volleft = (volleft * 256) / 1036;
  volright = (volright * 256) / 1036;
  if (volleft > 0x3f)
   volleft = 0x3f;
  if (volright > 0x3f)
   volright = 0x3f;
  if ((err = SendDAC(av7110, 3, 0x80 + volleft)))
   return err;
  return SendDAC(av7110, 4, volright);

 case 131:
  volleft = 127 - volleft / 2;
  volright = 127 - volright / 2;
  i2c_writereg(av7110, 0x20, 0x03, volleft);
  i2c_writereg(av7110, 0x20, 0x04, volright);
  return 0;

 case 130:
  vol = (volleft > volright) ? volleft : volright;
  val = (vol * 0x73 / 255) << 8;
  if (vol > 0)
         balance = ((volright - volleft) * 127) / vol;
  msp_writereg(av7110, MSP_WR_DSP, 0x0001, balance << 8);
  msp_writereg(av7110, MSP_WR_DSP, 0x0000, val);
  msp_writereg(av7110, MSP_WR_DSP, 0x0006, val);
  return 0;

 case 129:
  vol = (volleft > volright) ? volleft : volright;
  val = (vol * 0x73 / 255) << 8;
  if (vol > 0)
   balance = ((volright - volleft) * 127) / vol;
  msp_writereg(av7110, MSP_WR_DSP, 0x0001, balance << 8);
  msp_writereg(av7110, MSP_WR_DSP, 0x0000, val);
  return 0;
 }

 return 0;
}

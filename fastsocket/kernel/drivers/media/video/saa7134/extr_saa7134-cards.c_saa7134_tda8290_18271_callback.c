
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int board; } ;


 int EINVAL ;




 int saa7134_kworld_sbtvd_toggle_agc (struct saa7134_dev*,int) ;
 int saa7134_tda18271_hvr11x0_toggle_agc (struct saa7134_dev*,int) ;

__attribute__((used)) static int saa7134_tda8290_18271_callback(struct saa7134_dev *dev,
       int command, int arg)
{
 int ret = 0;

 switch (command) {
 case 128:
  switch (dev->board) {
  case 130:
  case 131:
   ret = saa7134_tda18271_hvr11x0_toggle_agc(dev, arg);
   break;
  case 129:
   ret = saa7134_kworld_sbtvd_toggle_agc(dev, arg);
   break;
  default:
   break;
  }
  break;
 default:
  ret = -EINVAL;
  break;
 }
 return ret;
}

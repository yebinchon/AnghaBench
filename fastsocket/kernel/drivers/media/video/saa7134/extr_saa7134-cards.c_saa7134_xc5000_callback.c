
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int board; } ;


 int SAA7133_ANALOG_IO_SELECT ;
 int SAA7134_ANALOG_IN_CTRL1 ;
 int SAA7134_AUDIO_CLOCK0 ;
 int SAA7134_AUDIO_CLOCKS_PER_FIELD0 ;
 int SAA7134_AUDIO_PLL_CTRL ;



 int SAA7134_GPIO_GPMODE0 ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int SAA7134_SPECIAL_MODE ;
 int XC5000_TUNER_RESET ;
 int msleep (int) ;
 int saa_andorl (int,int,int) ;
 int saa_writeb (int ,int) ;

__attribute__((used)) static int saa7134_xc5000_callback(struct saa7134_dev *dev,
       int command, int arg)
{
 switch (dev->board) {
 case 128:
 case 129:
 case 130:
  if (command == XC5000_TUNER_RESET) {

   saa_writeb(SAA7134_SPECIAL_MODE, 0x00);
   msleep(10);
   saa_writeb(SAA7134_SPECIAL_MODE, 0x01);
   msleep(10);
  }
  break;
 default:
  saa_andorl(SAA7134_GPIO_GPMODE0 >> 2, 0x06e20000, 0x06e20000);
  saa_andorl(SAA7134_GPIO_GPSTATUS0 >> 2, 0x06a20000, 0x06a20000);
  saa_andorl(SAA7133_ANALOG_IO_SELECT >> 2, 0x02, 0x02);
  saa_andorl(SAA7134_ANALOG_IN_CTRL1 >> 2, 0x81, 0x81);
  saa_andorl(SAA7134_AUDIO_CLOCK0 >> 2, 0x03187de7, 0x03187de7);
  saa_andorl(SAA7134_AUDIO_PLL_CTRL >> 2, 0x03, 0x03);
  saa_andorl(SAA7134_AUDIO_CLOCKS_PER_FIELD0 >> 2,
      0x0001e000, 0x0001e000);
  break;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7164_dev {int board; } ;


 int PCIEBRIDGE_UNITID ;






 int msleep (int) ;
 int saa7164_api_clear_gpiobit (struct saa7164_dev*,int ,int) ;
 int saa7164_api_set_gpiobit (struct saa7164_dev*,int ,int) ;

void saa7164_gpio_setup(struct saa7164_dev *dev)
{
 switch (dev->board) {
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:







  saa7164_api_clear_gpiobit(dev, PCIEBRIDGE_UNITID, 2);
  saa7164_api_clear_gpiobit(dev, PCIEBRIDGE_UNITID, 3);

  msleep(20);

  saa7164_api_set_gpiobit(dev, PCIEBRIDGE_UNITID, 2);
  saa7164_api_set_gpiobit(dev, PCIEBRIDGE_UNITID, 3);
  break;
 }
}

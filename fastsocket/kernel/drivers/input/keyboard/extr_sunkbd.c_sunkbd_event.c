
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunkbd {int serio; } ;
struct input_dev {int led; } ;




 int LED_CAPSL ;
 int LED_COMPOSE ;
 int LED_NUML ;
 int LED_SCROLLL ;


 int SUNKBD_CMD_BELLOFF ;
 int SUNKBD_CMD_NOCLICK ;
 int SUNKBD_CMD_SETLED ;
 struct sunkbd* input_get_drvdata (struct input_dev*) ;
 int serio_write (int ,int) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int sunkbd_event(struct input_dev *dev,
   unsigned int type, unsigned int code, int value)
{
 struct sunkbd *sunkbd = input_get_drvdata(dev);

 switch (type) {

 case 131:

  serio_write(sunkbd->serio, SUNKBD_CMD_SETLED);
  serio_write(sunkbd->serio,
   (!!test_bit(LED_CAPSL, dev->led) << 3) |
   (!!test_bit(LED_SCROLLL, dev->led) << 2) |
   (!!test_bit(LED_COMPOSE, dev->led) << 1) |
    !!test_bit(LED_NUML, dev->led));
  return 0;

 case 130:

  switch (code) {

  case 128:
   serio_write(sunkbd->serio, SUNKBD_CMD_NOCLICK - value);
   return 0;

  case 129:
   serio_write(sunkbd->serio, SUNKBD_CMD_BELLOFF - value);
   return 0;
  }

  break;
 }

 return -1;
}

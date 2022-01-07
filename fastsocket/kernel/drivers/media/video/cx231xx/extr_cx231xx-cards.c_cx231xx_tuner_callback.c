
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* tuner_gpio; } ;
struct cx231xx {scalar_t__ tuner_type; int model; TYPE_2__ board; } ;
struct TYPE_3__ {int bit; } ;


 int CX231XX_BOARD_PV_PLAYTV_USB_HYBRID ;
 int EINVAL ;

 scalar_t__ TUNER_NXP_TDA18271 ;
 scalar_t__ TUNER_XC5000 ;
 int XC5000_TUNER_RESET ;
 int cx231xx_info (char*,int,scalar_t__) ;
 int cx231xx_set_agc_analog_digital_mux_select (struct cx231xx*,int) ;
 int cx231xx_set_gpio_value (struct cx231xx*,int ,int) ;
 int msleep (int) ;

int cx231xx_tuner_callback(void *ptr, int component, int command, int arg)
{
 int rc = 0;
 struct cx231xx *dev = ptr;

 if (dev->tuner_type == TUNER_XC5000) {
  if (command == XC5000_TUNER_RESET) {
   cx231xx_info
    ("Tuner CB: RESET: cmd %d : tuner type %d \n",
     command, dev->tuner_type);
   cx231xx_set_gpio_value(dev, dev->board.tuner_gpio->bit,
            1);
   msleep(10);
   cx231xx_set_gpio_value(dev, dev->board.tuner_gpio->bit,
            0);
   msleep(330);
   cx231xx_set_gpio_value(dev, dev->board.tuner_gpio->bit,
            1);
   msleep(10);
  }
 } else if (dev->tuner_type == TUNER_NXP_TDA18271) {
  switch (command) {
  case 128:
   if (dev->model == CX231XX_BOARD_PV_PLAYTV_USB_HYBRID)
    rc = cx231xx_set_agc_analog_digital_mux_select(dev, arg);
   break;
  default:
   rc = -EINVAL;
   break;
  }
 }
 return rc;
}

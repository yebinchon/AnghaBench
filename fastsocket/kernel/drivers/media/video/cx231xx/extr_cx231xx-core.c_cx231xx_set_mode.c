
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int mode; int model; } ;
typedef enum cx231xx_mode { ____Placeholder_cx231xx_mode } cx231xx_mode ;
 scalar_t__ CX231XX_DIGITAL_MODE ;
 int CX231XX_SUSPEND ;
 int EINVAL ;
 int POLARIS_AVMODE_DIGITAL ;
 int cx231xx_set_agc_analog_digital_mux_select (struct cx231xx*,int) ;
 int cx231xx_set_power_mode (struct cx231xx*,int ) ;

int cx231xx_set_mode(struct cx231xx *dev, enum cx231xx_mode set_mode)
{
 int errCode = 0;

 if (dev->mode == set_mode)
  return 0;

 if (set_mode == CX231XX_SUSPEND) {

  dev->mode = set_mode;
 }


 if (dev->mode != CX231XX_SUSPEND)
  return -EINVAL;

 dev->mode = set_mode;

 if (dev->mode == CX231XX_DIGITAL_MODE) {

  switch (dev->model) {
  case 135:
  case 134:
  case 130:
  case 132:
  errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 0);
   break;
  case 133:
  case 131:
   errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 1);
   break;
  case 129:
   errCode = cx231xx_set_power_mode(dev,
      POLARIS_AVMODE_DIGITAL);
   break;
  default:
   break;
  }
 } else {

  switch (dev->model) {
  case 135:
  case 134:
  case 130:
  case 132:
  errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 1);
   break;
  case 133:
  case 131:
  case 129:
  case 128:
  errCode = cx231xx_set_agc_analog_digital_mux_select(dev, 0);
   break;
  default:
   break;
  }
 }

 return 0;
}

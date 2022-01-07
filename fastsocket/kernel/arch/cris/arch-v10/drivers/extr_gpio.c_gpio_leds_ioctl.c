
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRIS_LED_ACTIVE_SET_G (unsigned char) ;
 int CRIS_LED_ACTIVE_SET_R (unsigned char) ;
 int CRIS_LED_BIT_CLR (unsigned long) ;
 int CRIS_LED_BIT_SET (unsigned long) ;
 int EINVAL ;



 int _IOC_NR (unsigned int) ;

__attribute__((used)) static int
gpio_leds_ioctl(unsigned int cmd, unsigned long arg)
{
 unsigned char green;
 unsigned char red;

 switch (_IOC_NR(cmd)) {
 case 130:
  green = ((unsigned char)arg) & 1;
  red = (((unsigned char)arg) >> 1) & 1;
  CRIS_LED_ACTIVE_SET_G(green);
  CRIS_LED_ACTIVE_SET_R(red);
  break;

 case 128:
  CRIS_LED_BIT_SET(arg);
  break;

 case 129:
  CRIS_LED_BIT_CLR(arg);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}

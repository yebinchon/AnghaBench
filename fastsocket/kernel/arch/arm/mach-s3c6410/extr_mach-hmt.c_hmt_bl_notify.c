
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C64XX_GPB (int) ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int hmt_bl_notify(int brightness)
{




 if (brightness < 0x800) {

  brightness = (100*256 * brightness + 231245/2) / 231245;
 } else {

  int t = (brightness*4 + 16*1024 + 58)/116;
  brightness = 25 * ((t * t * t + 0x100000/2) / 0x100000);
 }

 gpio_set_value(S3C64XX_GPB(4), brightness);

 return brightness;
}

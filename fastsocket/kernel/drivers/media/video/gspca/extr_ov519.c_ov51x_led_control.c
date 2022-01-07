
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int bridge; scalar_t__ invert_led; } ;






 int OV519_GPIO_DATA_OUT0 ;
 int R511_SYS_LED_CTL ;
 int R518_GPIO_OUT ;
 int reg_w (struct sd*,int ,int) ;
 int reg_w_mask (struct sd*,int ,int,int) ;

__attribute__((used)) static void ov51x_led_control(struct sd *sd, int on)
{
 if (sd->invert_led)
  on = !on;

 switch (sd->bridge) {

 case 131:
  reg_w(sd, R511_SYS_LED_CTL, on);
  break;
 case 130:
 case 129:
  reg_w_mask(sd, R518_GPIO_OUT, 0x02 * on, 0x02);
  break;
 case 128:
  reg_w_mask(sd, OV519_GPIO_DATA_OUT0, on, 1);
  break;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bridge; scalar_t__ bclass; } ;


 scalar_t__ BCL_OV518 ;
 scalar_t__ BRG_OV511PLUS ;
 int PDEBUG (int,char*,char*) ;
 int R511_SYS_LED_CTL ;
 int R518_GPIO_OUT ;
 int reg_w (struct usb_ov511*,int ,int) ;
 int reg_w_mask (struct usb_ov511*,int ,int,int) ;

__attribute__((used)) static void
ov51x_led_control(struct usb_ov511 *ov, int enable)
{
 PDEBUG(4, " (%s)", enable ? "turn on" : "turn off");

 if (ov->bridge == BRG_OV511PLUS)
  reg_w(ov, R511_SYS_LED_CTL, enable ? 1 : 0);
 else if (ov->bclass == BCL_OV518)
  reg_w_mask(ov, R518_GPIO_OUT, enable ? 0x02 : 0x00, 0x02);

 return;
}

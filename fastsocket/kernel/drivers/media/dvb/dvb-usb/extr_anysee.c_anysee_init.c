
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_usb_device {int dummy; } ;


 int anysee_ir_ctrl (struct dvb_usb_device*,int) ;
 int anysee_led_ctrl (struct dvb_usb_device*,int,int) ;

__attribute__((used)) static int anysee_init(struct dvb_usb_device *d)
{
 int ret;

 ret = anysee_led_ctrl(d, 0x01, 0x03);
 if (ret)
  return ret;


 ret = anysee_ir_ctrl(d, 1);
 if (ret)
  return ret;

 return 0;
}

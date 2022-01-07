
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {struct cxusb_state* priv; } ;
struct cxusb_state {int* gpio_write_state; } ;


 int CMD_GPIO_WRITE ;
 size_t GPIO_TUNER ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int*,int,int*,int) ;
 int deb_info (char*) ;

__attribute__((used)) static void cxusb_gpio_tuner(struct dvb_usb_device *d, int onoff)
{
 struct cxusb_state *st = d->priv;
 u8 o[2], i;

 if (st->gpio_write_state[GPIO_TUNER] == onoff)
  return;

 o[0] = GPIO_TUNER;
 o[1] = onoff;
 cxusb_ctrl_msg(d, CMD_GPIO_WRITE, o, 2, &i, 1);

 if (i != 0x01)
  deb_info("gpio_write failed.\n");

 st->gpio_write_state[GPIO_TUNER] = onoff;
}

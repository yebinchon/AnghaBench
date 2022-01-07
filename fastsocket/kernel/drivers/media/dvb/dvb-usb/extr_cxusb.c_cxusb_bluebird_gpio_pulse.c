
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int cxusb_bluebird_gpio_rw (struct dvb_usb_device*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void cxusb_bluebird_gpio_pulse(struct dvb_usb_device *d, u8 pin, int low)
{
 cxusb_bluebird_gpio_rw(d, pin, low ? 0 : pin);
 msleep(5);
 cxusb_bluebird_gpio_rw(d, pin, low ? pin : 0);
}

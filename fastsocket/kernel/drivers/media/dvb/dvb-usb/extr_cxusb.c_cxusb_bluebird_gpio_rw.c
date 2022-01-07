
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int CMD_BLUEBIRD_GPIO_RW ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int*,int,int*,int) ;
 int deb_info (char*) ;

__attribute__((used)) static int cxusb_bluebird_gpio_rw(struct dvb_usb_device *d, u8 changemask,
     u8 newval)
{
 u8 o[2], gpio_state;
 int rc;

 o[0] = 0xff & ~changemask;
 o[1] = newval & changemask;

 rc = cxusb_ctrl_msg(d, CMD_BLUEBIRD_GPIO_RW, o, 2, &gpio_state, 1);
 if (rc < 0 || (gpio_state & changemask) != (newval & changemask))
  deb_info("bluebird_gpio_write failed.\n");

 return rc < 0 ? rc : gpio_state;
}

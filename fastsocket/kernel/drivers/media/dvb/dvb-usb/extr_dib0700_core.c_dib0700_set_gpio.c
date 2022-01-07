
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;
typedef enum dib07x0_gpios { ____Placeholder_dib07x0_gpios } dib07x0_gpios ;
typedef int buf ;


 int REQUEST_SET_GPIO ;
 int dib0700_ctrl_wr (struct dvb_usb_device*,int*,int) ;

int dib0700_set_gpio(struct dvb_usb_device *d, enum dib07x0_gpios gpio, u8 gpio_dir, u8 gpio_val)
{
 u8 buf[3] = { REQUEST_SET_GPIO, gpio, ((gpio_dir & 0x01) << 7) | ((gpio_val & 0x01) << 6) };
 return dib0700_ctrl_wr(d, buf, sizeof(buf));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int dibusb_i2c_msg (struct dvb_usb_device*,int,int *,int,int *,int) ;

int dibusb_read_eeprom_byte(struct dvb_usb_device *d, u8 offs, u8 *val)
{
 u8 wbuf[1] = { offs };
 return dibusb_i2c_msg(d, 0x50, wbuf, 1, val, 1);
}

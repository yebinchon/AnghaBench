
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int DIBUSB_IOCTL_CMD_POWER_MODE ;
 int DIBUSB_IOCTL_POWER_WAKEUP ;
 int DIBUSB_REQ_SET_IOCTL ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int *,int) ;

int dibusb2_0_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 if (onoff) {
  u8 b[3] = { DIBUSB_REQ_SET_IOCTL, DIBUSB_IOCTL_CMD_POWER_MODE, DIBUSB_IOCTL_POWER_WAKEUP };
  return dvb_usb_generic_write(d,b,3);
 } else
  return 0;
}

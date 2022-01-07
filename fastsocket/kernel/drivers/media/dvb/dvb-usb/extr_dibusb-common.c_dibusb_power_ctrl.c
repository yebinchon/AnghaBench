
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int DIBUSB_IOCTL_CMD_POWER_MODE ;
 int DIBUSB_IOCTL_POWER_SLEEP ;
 int DIBUSB_IOCTL_POWER_WAKEUP ;
 int DIBUSB_REQ_SET_IOCTL ;
 int dvb_usb_generic_write (struct dvb_usb_device*,int *,int) ;
 int msleep (int) ;

int dibusb_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 b[3];
 int ret;
 b[0] = DIBUSB_REQ_SET_IOCTL;
 b[1] = DIBUSB_IOCTL_CMD_POWER_MODE;
 b[2] = onoff ? DIBUSB_IOCTL_POWER_WAKEUP : DIBUSB_IOCTL_POWER_SLEEP;
 ret = dvb_usb_generic_write(d,b,3);
 msleep(10);
 return ret;
}

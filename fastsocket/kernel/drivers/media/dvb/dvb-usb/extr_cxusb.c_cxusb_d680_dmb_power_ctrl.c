
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int CMD_DIGITAL ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int *,int ,int *,int) ;
 int cxusb_power_ctrl (struct dvb_usb_device*,int) ;
 int msleep (int) ;

__attribute__((used)) static int cxusb_d680_dmb_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 int ret;
 u8 b;
 ret = cxusb_power_ctrl(d, onoff);
 if (!onoff)
  return ret;

 msleep(128);
 cxusb_ctrl_msg(d, CMD_DIGITAL, ((void*)0), 0, &b, 1);
 msleep(100);
 return ret;
}

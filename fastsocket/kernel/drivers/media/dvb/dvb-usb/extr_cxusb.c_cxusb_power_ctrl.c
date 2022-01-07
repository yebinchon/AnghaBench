
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int CMD_POWER_OFF ;
 int CMD_POWER_ON ;
 int cxusb_ctrl_msg (struct dvb_usb_device*,int ,int *,int,int *,int ) ;

__attribute__((used)) static int cxusb_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 b = 0;
 if (onoff)
  return cxusb_ctrl_msg(d, CMD_POWER_ON, &b, 1, ((void*)0), 0);
 else
  return cxusb_ctrl_msg(d, CMD_POWER_OFF, &b, 1, ((void*)0), 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int CMD_POWER ;
 int ttusb2_msg (struct dvb_usb_device*,int ,int*,int,int *,int ) ;

__attribute__((used)) static int ttusb2_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 b = onoff;
 ttusb2_msg(d, CMD_POWER, &b, 0, ((void*)0), 0);
 return ttusb2_msg(d, CMD_POWER, &b, 1, ((void*)0), 0);
}

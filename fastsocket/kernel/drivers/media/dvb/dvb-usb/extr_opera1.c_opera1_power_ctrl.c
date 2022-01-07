
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int udev; } ;


 int OPERA_WRITE_MSG ;
 scalar_t__ dvb_usb_opera1_debug ;
 int info (char*,char*) ;
 int opera1_xilinx_rw (int ,int,int,int*,int,int ) ;

__attribute__((used)) static int opera1_power_ctrl(struct dvb_usb_device *d, int onoff)
{
 u8 val = onoff ? 0x01 : 0x00;

 if (dvb_usb_opera1_debug)
  info("power %s", onoff ? "on" : "off");
 return opera1_xilinx_rw(d->udev, 0xb7, val,
    &val, 1, OPERA_WRITE_MSG);
}

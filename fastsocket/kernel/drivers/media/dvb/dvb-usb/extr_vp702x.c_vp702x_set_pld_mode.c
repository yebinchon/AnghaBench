
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_adapter {int dev; } ;


 int vp702x_usb_in_op (int ,int,int,int ,int*,int) ;

__attribute__((used)) static int vp702x_set_pld_mode(struct dvb_usb_adapter *adap, u8 bypass)
{
 u8 buf[16] = { 0 };
 return vp702x_usb_in_op(adap->dev, 0xe0, (bypass << 8) | 0x0e, 0, buf, 16);
}

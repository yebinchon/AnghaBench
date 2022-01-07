
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int READ_EEPROM_REQ ;
 int vp702x_usb_in_op (struct dvb_usb_device*,int ,int,int,int*,int) ;

__attribute__((used)) static int vp702x_read_mac_addr(struct dvb_usb_device *d,u8 mac[6])
{
 u8 i;
 for (i = 6; i < 12; i++)
  vp702x_usb_in_op(d, READ_EEPROM_REQ, i, 1, &mac[i - 6], 1);
 return 0;
}

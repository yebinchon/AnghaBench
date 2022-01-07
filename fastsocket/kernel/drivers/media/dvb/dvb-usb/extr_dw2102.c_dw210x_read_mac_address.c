
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int udev; } ;


 int DW210X_READ_MSG ;
 int deb_xfer (char*,int) ;
 int debug_dump (int *,int,int (*) (char*,int)) ;
 scalar_t__ dw210x_op_rw (int ,int,int,int,int *,int,int ) ;
 int err (char*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int dw210x_read_mac_address(struct dvb_usb_device *d, u8 mac[6])
{
 int i;
 u8 ibuf[] = {0, 0};
 u8 eeprom[256], eepromline[16];

 for (i = 0; i < 256; i++) {
  if (dw210x_op_rw(d->udev, 0xb6, 0xa0 , i, ibuf, 2, DW210X_READ_MSG) < 0) {
   err("read eeprom failed.");
   return -1;
  } else {
   eepromline[i%16] = ibuf[0];
   eeprom[i] = ibuf[0];
  }
  if ((i % 16) == 15) {
   deb_xfer("%02x: ", i - 15);
   debug_dump(eepromline, 16, deb_xfer);
  }
 }

 memcpy(mac, eeprom + 8, 6);
 return 0;
}

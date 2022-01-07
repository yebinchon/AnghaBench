
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {struct af9005_device_state* priv; } ;
struct af9005_device_state {int sequence; } ;
typedef int obuf ;
typedef int ibuf ;


 int EIO ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;
 int memset (int*,int ,int) ;

int af9005_read_eeprom(struct dvb_usb_device *d, u8 address, u8 * values,
         int len)
{
 struct af9005_device_state *st = d->priv;
 u8 obuf[16], ibuf[14];
 int ret, i;

 memset(obuf, 0, sizeof(obuf));
 memset(ibuf, 0, sizeof(ibuf));

 obuf[0] = 14;
 obuf[1] = 0;

 obuf[2] = 0x2a;

 obuf[3] = 12;

 obuf[4] = st->sequence++;

 obuf[5] = 0;

 obuf[6] = len;
 obuf[7] = address;
 ret = dvb_usb_generic_rw(d, obuf, 16, ibuf, 14, 0);
 if (ret)
  return ret;
 if (ibuf[2] != 0x2b) {
  err("Read eeprom, invalid reply code");
  return -EIO;
 }
 if (ibuf[3] != 10) {
  err("Read eeprom, invalid reply length");
  return -EIO;
 }
 if (ibuf[4] != obuf[4]) {
  err("Read eeprom, wrong sequence in reply ");
  return -EIO;
 }
 if (ibuf[5] != 1) {
  err("Read eeprom, wrong status in reply ");
  return -EIO;
 }
 for (i = 0; i < len; i++) {
  values[i] = ibuf[6 + i];
 }
 return 0;
}

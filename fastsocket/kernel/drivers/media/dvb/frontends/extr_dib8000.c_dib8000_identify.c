
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_device {int dummy; } ;


 int dib8000_i2c_read16 (struct i2c_device*,int) ;
 int dprintk (char*,...) ;

__attribute__((used)) static u16 dib8000_identify(struct i2c_device *client)
{
 u16 value;


 value = dib8000_i2c_read16(client, 896);

 if ((value = dib8000_i2c_read16(client, 896)) != 0x01b3) {
  dprintk("wrong Vendor ID (read=0x%x)", value);
  return 0;
 }

 value = dib8000_i2c_read16(client, 897);
 if (value != 0x8000 && value != 0x8001 && value != 0x8002) {
  dprintk("wrong Device ID (%x)", value);
  return 0;
 }

 switch (value) {
 case 0x8000:
  dprintk("found DiB8000A");
  break;
 case 0x8001:
  dprintk("found DiB8000B");
  break;
 case 0x8002:
  dprintk("found DiB8000C");
  break;
 }
 return value;
}

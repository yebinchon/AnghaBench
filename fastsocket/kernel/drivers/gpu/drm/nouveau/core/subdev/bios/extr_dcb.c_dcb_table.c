
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nouveau_device {scalar_t__ card_type; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ NV_04 ;
 struct nouveau_device* nv_device (struct nouveau_bios*) ;
 int nv_memcmp (struct nouveau_bios*,int,char*,int) ;
 int nv_ro08 (struct nouveau_bios*,int) ;
 int nv_ro16 (struct nouveau_bios*,int) ;
 int nv_ro32 (struct nouveau_bios*,int) ;
 int nv_warn (struct nouveau_bios*,char*,...) ;

u16
dcb_table(struct nouveau_bios *bios, u8 *ver, u8 *hdr, u8 *cnt, u8 *len)
{
 struct nouveau_device *device = nv_device(bios);
 u16 dcb = 0x0000;

 if (device->card_type > NV_04)
  dcb = nv_ro16(bios, 0x36);
 if (!dcb) {
  nv_warn(bios, "DCB table not found\n");
  return dcb;
 }

 *ver = nv_ro08(bios, dcb);

 if (*ver >= 0x41) {
  nv_warn(bios, "DCB version 0x%02x unknown\n", *ver);
  return 0x0000;
 } else
 if (*ver >= 0x30) {
  if (nv_ro32(bios, dcb + 6) == 0x4edcbdcb) {
   *hdr = nv_ro08(bios, dcb + 1);
   *cnt = nv_ro08(bios, dcb + 2);
   *len = nv_ro08(bios, dcb + 3);
   return dcb;
  }
 } else
 if (*ver >= 0x20) {
  if (nv_ro32(bios, dcb + 4) == 0x4edcbdcb) {
   u16 i2c = nv_ro16(bios, dcb + 2);
   *hdr = 8;
   *cnt = (i2c - dcb) / 8;
   *len = 8;
   return dcb;
  }
 } else
 if (*ver >= 0x15) {
  if (!nv_memcmp(bios, dcb - 7, "DEV_REC", 7)) {
   u16 i2c = nv_ro16(bios, dcb + 2);
   *hdr = 4;
   *cnt = (i2c - dcb) / 10;
   *len = 10;
   return dcb;
  }
 } else {
  nv_warn(bios, "DCB contains no useful data\n");
  return 0x0000;
 }

 nv_warn(bios, "DCB header validation failed\n");
 return 0x0000;
}

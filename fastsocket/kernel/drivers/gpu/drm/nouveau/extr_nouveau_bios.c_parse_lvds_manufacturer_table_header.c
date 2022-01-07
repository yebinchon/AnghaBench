
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int lvdsmanufacturerpointer; } ;
struct nvbios {int* data; TYPE_1__ fp; } ;
struct nouveau_drm {int dummy; } ;
struct lvdstableheader {int lvds_ver; int headerlen; int recordlen; } ;
struct drm_device {int dummy; } ;


 int EINVAL ;
 int ENOSYS ;
 int NV_ERROR (struct nouveau_drm*,char*,...) ;
 int memset (struct lvdstableheader*,int ,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

__attribute__((used)) static int parse_lvds_manufacturer_table_header(struct drm_device *dev, struct nvbios *bios, struct lvdstableheader *lth)
{







 struct nouveau_drm *drm = nouveau_drm(dev);
 uint8_t lvds_ver, headerlen, recordlen;

 memset(lth, 0, sizeof(struct lvdstableheader));

 if (bios->fp.lvdsmanufacturerpointer == 0x0) {
  NV_ERROR(drm, "Pointer to LVDS manufacturer table invalid\n");
  return -EINVAL;
 }

 lvds_ver = bios->data[bios->fp.lvdsmanufacturerpointer];

 switch (lvds_ver) {
 case 0x0a:
  headerlen = 2;
  recordlen = bios->data[bios->fp.lvdsmanufacturerpointer + 1];
  break;
 case 0x30:
  headerlen = bios->data[bios->fp.lvdsmanufacturerpointer + 1];
  if (headerlen < 0x1f) {
   NV_ERROR(drm, "LVDS table header not understood\n");
   return -EINVAL;
  }
  recordlen = bios->data[bios->fp.lvdsmanufacturerpointer + 2];
  break;
 case 0x40:
  headerlen = bios->data[bios->fp.lvdsmanufacturerpointer + 1];
  if (headerlen < 0x7) {
   NV_ERROR(drm, "LVDS table header not understood\n");
   return -EINVAL;
  }
  recordlen = bios->data[bios->fp.lvdsmanufacturerpointer + 2];
  break;
 default:
  NV_ERROR(drm,
    "LVDS table revision %d.%d not currently supported\n",
    lvds_ver >> 4, lvds_ver & 0xf);
  return -ENOSYS;
 }

 lth->lvds_ver = lvds_ver;
 lth->headerlen = headerlen;
 lth->recordlen = recordlen;

 return 0;
}

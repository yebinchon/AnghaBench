
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_2__ {int* edid; } ;
struct nvbios {int* data; TYPE_1__ fp; } ;
struct nouveau_drm {struct nvbios vbios; } ;
struct drm_device {int dummy; } ;


 int EDID1_LEN ;
 int NV_INFO (struct nouveau_drm*,char*) ;
 int NV_PROM_SIZE ;
 size_t findstr (int*,int,int const*,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int nv_cksum (int*,int ) ;

uint8_t *nouveau_bios_embedded_edid(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nvbios *bios = &drm->vbios;
 const uint8_t edid_sig[] = {
   0x00, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x00 };
 uint16_t offset = 0;
 uint16_t newoffset;
 int searchlen = NV_PROM_SIZE;

 if (bios->fp.edid)
  return bios->fp.edid;

 while (searchlen) {
  newoffset = findstr(&bios->data[offset], searchlen,
        edid_sig, 8);
  if (!newoffset)
   return ((void*)0);
  offset += newoffset;
  if (!nv_cksum(&bios->data[offset], EDID1_LEN))
   break;

  searchlen -= offset;
  offset++;
 }

 NV_INFO(drm, "Found EDID in BIOS\n");

 return bios->fp.edid = &bios->data[offset];
}

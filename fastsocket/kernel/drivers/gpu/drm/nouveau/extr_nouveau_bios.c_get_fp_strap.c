
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvbios {int major_version; int* data; } ;
struct nouveau_device {scalar_t__ card_type; } ;
struct drm_device {int dummy; } ;


 int NVReadVgaCrtc5758 (struct drm_device*,int ,int) ;
 scalar_t__ NV_50 ;
 int NV_PEXTDEV_BOOT_0 ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 int nv_rd32 (struct nouveau_device*,int ) ;

__attribute__((used)) static int
get_fp_strap(struct drm_device *dev, struct nvbios *bios)
{
 struct nouveau_device *device = nouveau_dev(dev);
 if (bios->major_version < 5 && bios->data[0x48] & 0x4)
  return NVReadVgaCrtc5758(dev, 0, 0xf) & 0xf;

 if (device->card_type >= NV_50)
  return (nv_rd32(device, NV_PEXTDEV_BOOT_0) >> 24) & 0xf;
 else
  return (nv_rd32(device, NV_PEXTDEV_BOOT_0) >> 16) & 0xf;
}

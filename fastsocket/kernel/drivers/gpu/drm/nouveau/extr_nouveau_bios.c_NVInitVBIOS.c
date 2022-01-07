
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvbios {scalar_t__ offset; int type; int chip_version; int major_version; int length; int data; struct drm_device* dev; int lock; } ;
struct nouveau_drm {struct nvbios vbios; int device; } ;
struct TYPE_2__ {int chip; int major; } ;
struct nouveau_bios {scalar_t__ bmp_offset; scalar_t__ bit_offset; TYPE_1__ version; int size; int data; } ;
struct drm_device {int dummy; } ;


 int NVBIOS_BIT ;
 int NVBIOS_BMP ;
 int memset (struct nvbios*,int ,int) ;
 struct nouveau_bios* nouveau_bios (int ) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int parse_bit_structure (struct nvbios*,scalar_t__) ;
 int parse_bmp_structure (struct drm_device*,struct nvbios*,scalar_t__) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static bool NVInitVBIOS(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_bios *bios = nouveau_bios(drm->device);
 struct nvbios *legacy = &drm->vbios;

 memset(legacy, 0, sizeof(struct nvbios));
 spin_lock_init(&legacy->lock);
 legacy->dev = dev;

 legacy->data = bios->data;
 legacy->length = bios->size;
 legacy->major_version = bios->version.major;
 legacy->chip_version = bios->version.chip;
 if (bios->bit_offset) {
  legacy->type = NVBIOS_BIT;
  legacy->offset = bios->bit_offset;
  return !parse_bit_structure(legacy, legacy->offset + 6);
 } else
 if (bios->bmp_offset) {
  legacy->type = NVBIOS_BMP;
  legacy->offset = bios->bmp_offset;
  return !parse_bmp_structure(dev, legacy, legacy->offset);
 }

 return 0;
}

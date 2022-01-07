
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nouveau_drm {int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int) ;

__attribute__((used)) static u32
read_div(struct drm_device *dev)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_drm *drm = nouveau_drm(dev);

 switch (nv_device(drm->device)->chipset) {
 case 0x50:
 case 0x84:
 case 0x86:
 case 0x98:
 case 0xa0:
  return nv_rd32(device, 0x004700);
 case 0x92:
 case 0x94:
 case 0x96:
  return nv_rd32(device, 0x004800);
 default:
  return 0x00000000;
 }
}

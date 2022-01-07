
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 int NVReadVgaCrtc (struct drm_device*,int ,int ) ;
 int NV_CIO_CRE_44 ;
 int NV_PBUS_DEBUG_1 ;
 struct nouveau_device* nouveau_dev (struct drm_device*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int ) ;

__attribute__((used)) static inline bool
nv_heads_tied(struct drm_device *dev)
{
 struct nouveau_device *device = nouveau_dev(dev);
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (nv_device(drm->device)->chipset == 0x11)
  return !!(nv_rd32(device, NV_PBUS_DEBUG_1) & (1 << 28));

 return NVReadVgaCrtc(dev, 0, NV_CIO_CRE_44) & 0x4;
}

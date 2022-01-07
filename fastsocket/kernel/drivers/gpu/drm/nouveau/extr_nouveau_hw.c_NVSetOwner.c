
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int chipset; } ;


 int NVReadVgaCrtc (struct drm_device*,int,int ) ;
 int NVWriteVgaCrtc (struct drm_device*,int ,int ,int) ;
 int NV_CIO_CRE_2E ;
 int NV_CIO_CRE_44 ;
 int NV_CIO_SR_LOCK_INDEX ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;

void
NVSetOwner(struct drm_device *dev, int owner)
{
 struct nouveau_drm *drm = nouveau_drm(dev);

 if (owner == 1)
  owner *= 3;

 if (nv_device(drm->device)->chipset == 0x11) {



  NVReadVgaCrtc(dev, 0, NV_CIO_SR_LOCK_INDEX);
  NVReadVgaCrtc(dev, 1, NV_CIO_SR_LOCK_INDEX);
 }


 NVWriteVgaCrtc(dev, 0, NV_CIO_CRE_44, owner);

 if (nv_device(drm->device)->chipset == 0x11) {
  NVWriteVgaCrtc(dev, 0, NV_CIO_CRE_2E, owner);
  NVWriteVgaCrtc(dev, 0, NV_CIO_CRE_2E, owner);
 }
}

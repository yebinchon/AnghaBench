
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct drm_device {int pci_device; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 scalar_t__ NV_10 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;

__attribute__((used)) static inline bool
nv_two_heads(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 const int impl = dev->pci_device & 0x0ff0;

 if (nv_device(drm->device)->card_type >= NV_10 && impl != 0x0100 &&
     impl != 0x0150 && impl != 0x01a0 && impl != 0x0200)
  return 1;

 return 0;
}

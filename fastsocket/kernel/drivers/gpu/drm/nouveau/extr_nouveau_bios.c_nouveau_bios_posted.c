
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 int NVReadVgaCrtc (struct drm_device*,int ,int) ;
 scalar_t__ NV_50 ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 TYPE_1__* nv_device (int ) ;

__attribute__((used)) static bool
nouveau_bios_posted(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 unsigned htotal;

 if (nv_device(drm->device)->card_type >= NV_50) {
  if (NVReadVgaCrtc(dev, 0, 0x00) == 0 &&
      NVReadVgaCrtc(dev, 0, 0x1a) == 0)
   return 0;
  return 1;
 }

 htotal = NVReadVgaCrtc(dev, 0, 0x06);
 htotal |= (NVReadVgaCrtc(dev, 0, 0x07) & 0x01) << 8;
 htotal |= (NVReadVgaCrtc(dev, 0, 0x07) & 0x20) << 4;
 htotal |= (NVReadVgaCrtc(dev, 0, 0x25) & 0x01) << 10;
 htotal |= (NVReadVgaCrtc(dev, 0, 0x41) & 0x01) << 11;

 return (htotal != 0);
}

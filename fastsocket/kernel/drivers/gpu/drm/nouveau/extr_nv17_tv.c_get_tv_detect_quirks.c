
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nouveau_object {int dummy; } ;
struct nouveau_drm {struct nouveau_object* device; } ;
struct drm_device {int dummy; } ;


 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 scalar_t__ nv_device_match (struct nouveau_object*,int,int,int) ;

__attribute__((used)) static bool
get_tv_detect_quirks(struct drm_device *dev, uint32_t *pin_mask)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct nouveau_object *device = drm->device;


 if (nv_device_match(device, 0x0322, 0x19da, 0x1035) ||
     nv_device_match(device, 0x0322, 0x19da, 0x2035)) {
  *pin_mask = 0xc;
  return 0;
 }


 if (nv_device_match(device, 0x01f0, 0x1462, 0x5710)) {
  *pin_mask = 0xc;
  return 0;
 }

 return 1;
}

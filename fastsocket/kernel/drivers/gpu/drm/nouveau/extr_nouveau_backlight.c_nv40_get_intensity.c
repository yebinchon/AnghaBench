
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_drm {int device; } ;
struct nouveau_device {int dummy; } ;
struct backlight_device {int dummy; } ;


 int NV40_PMC_BACKLIGHT ;
 int NV40_PMC_BACKLIGHT_MASK ;
 struct nouveau_drm* bl_get_data (struct backlight_device*) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int ) ;

__attribute__((used)) static int
nv40_get_intensity(struct backlight_device *bd)
{
 struct nouveau_drm *drm = bl_get_data(bd);
 struct nouveau_device *device = nv_device(drm->device);
 int val = (nv_rd32(device, NV40_PMC_BACKLIGHT) &
       NV40_PMC_BACKLIGHT_MASK) >> 16;

 return val;
}

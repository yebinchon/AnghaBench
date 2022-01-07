
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {int device; } ;
struct nouveau_device {int dummy; } ;
struct TYPE_2__ {int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 int NV40_PMC_BACKLIGHT ;
 int NV40_PMC_BACKLIGHT_MASK ;
 struct nouveau_drm* bl_get_data (struct backlight_device*) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int ) ;
 int nv_wr32 (struct nouveau_device*,int ,int) ;

__attribute__((used)) static int
nv40_set_intensity(struct backlight_device *bd)
{
 struct nouveau_drm *drm = bl_get_data(bd);
 struct nouveau_device *device = nv_device(drm->device);
 int val = bd->props.brightness;
 int reg = nv_rd32(device, NV40_PMC_BACKLIGHT);

 nv_wr32(device, NV40_PMC_BACKLIGHT,
   (val << 16) | (reg & ~NV40_PMC_BACKLIGHT_MASK));

 return 0;
}

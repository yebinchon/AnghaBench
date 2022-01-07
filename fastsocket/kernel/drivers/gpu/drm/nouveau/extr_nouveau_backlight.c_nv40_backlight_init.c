
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {struct backlight_device* backlight; int device; } ;
struct nouveau_device {int dummy; } ;
struct drm_connector {int kdev; int dev; } ;
struct TYPE_2__ {int max_brightness; int brightness; } ;
struct backlight_device {TYPE_1__ props; } ;


 scalar_t__ IS_ERR (struct backlight_device*) ;
 int NV40_PMC_BACKLIGHT ;
 int NV40_PMC_BACKLIGHT_MASK ;
 int PTR_ERR (struct backlight_device*) ;
 struct backlight_device* backlight_device_register (char*,int *,struct nouveau_drm*,int *) ;
 int backlight_update_status (struct backlight_device*) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 int nv40_bl_ops ;
 int nv40_get_intensity (struct backlight_device*) ;
 struct nouveau_device* nv_device (int ) ;
 int nv_rd32 (struct nouveau_device*,int ) ;

__attribute__((used)) static int
nv40_backlight_init(struct drm_connector *connector)
{
 struct nouveau_drm *drm = nouveau_drm(connector->dev);
 struct nouveau_device *device = nv_device(drm->device);
 struct backlight_device *bd;

 if (!(nv_rd32(device, NV40_PMC_BACKLIGHT) & NV40_PMC_BACKLIGHT_MASK))
  return 0;

 bd = backlight_device_register("nv_backlight", &connector->kdev, drm,
           &nv40_bl_ops);
 if (IS_ERR(bd))
  return PTR_ERR(bd);
 drm->backlight = bd;
 bd->props.brightness = nv40_get_intensity(bd);
 bd->props.max_brightness = 31;
 backlight_update_status(bd);

 return 0;
}

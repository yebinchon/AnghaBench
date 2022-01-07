
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* obj; } ;
struct TYPE_5__ {struct fb_info* fbdev; } ;
struct intel_fbdev {TYPE_3__ ifb; TYPE_1__ helper; } ;
struct fb_info {int screen_size; int screen_base; } ;
struct drm_device {TYPE_4__* dev_private; } ;
struct TYPE_8__ {struct intel_fbdev* fbdev; } ;
typedef TYPE_4__ drm_i915_private_t ;
struct TYPE_6__ {scalar_t__ stolen; } ;


 int fb_set_suspend (struct fb_info*,int) ;
 int memset_io (int ,int ,int ) ;

void intel_fbdev_set_suspend(struct drm_device *dev, int state)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_fbdev *ifbdev = dev_priv->fbdev;
 struct fb_info *info;

 if (!ifbdev)
  return;

 info = ifbdev->helper.fbdev;





 if (!state && ifbdev->ifb.obj->stolen)
  memset_io(info->screen_base, 0, info->screen_size);

 fb_set_suspend(info, state);
}

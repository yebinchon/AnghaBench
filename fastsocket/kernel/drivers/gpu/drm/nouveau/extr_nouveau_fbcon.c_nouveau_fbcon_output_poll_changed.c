
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_drm {TYPE_1__* fbcon; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int helper; } ;


 int drm_fb_helper_hotplug_event (int *) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;

void
nouveau_fbcon_output_poll_changed(struct drm_device *dev)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 drm_fb_helper_hotplug_event(&drm->fbcon->helper);
}

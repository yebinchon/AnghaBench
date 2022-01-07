
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct intel_framebuffer {TYPE_1__* obj; int base; } ;
struct TYPE_6__ {struct fb_info* fbdev; } ;
struct intel_fbdev {TYPE_3__ helper; struct intel_framebuffer ifb; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct fb_info {TYPE_2__ cmap; int screen_base; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int base; } ;


 int drm_fb_helper_fini (TYPE_3__*) ;
 int drm_framebuffer_cleanup (int *) ;
 int drm_framebuffer_unregister_private (int *) ;
 int drm_gem_object_unreference_unlocked (int *) ;
 int fb_dealloc_cmap (TYPE_2__*) ;
 int framebuffer_release (struct fb_info*) ;
 int iounmap (int ) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static void intel_fbdev_destroy(struct drm_device *dev,
    struct intel_fbdev *ifbdev)
{
 struct fb_info *info;
 struct intel_framebuffer *ifb = &ifbdev->ifb;

 if (ifbdev->helper.fbdev) {
  info = ifbdev->helper.fbdev;
  unregister_framebuffer(info);
  iounmap(info->screen_base);
  if (info->cmap.len)
   fb_dealloc_cmap(&info->cmap);
  framebuffer_release(info);
 }

 drm_fb_helper_fini(&ifbdev->helper);

 drm_framebuffer_unregister_private(&ifb->base);
 drm_framebuffer_cleanup(&ifb->base);
 if (ifb->obj) {
  drm_gem_object_unreference_unlocked(&ifb->obj->base);
  ifb->obj = ((void*)0);
 }
}

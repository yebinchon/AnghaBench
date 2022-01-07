
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_framebuffer {int base; int * obj; } ;
struct TYPE_4__ {struct fb_info* fbdev; } ;
struct radeon_fbdev {TYPE_2__ helper; struct radeon_framebuffer rfb; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct fb_info {TYPE_1__ cmap; } ;
struct drm_device {int dummy; } ;


 int drm_fb_helper_fini (TYPE_2__*) ;
 int drm_framebuffer_cleanup (int *) ;
 int drm_framebuffer_unregister_private (int *) ;
 int fb_dealloc_cmap (TYPE_1__*) ;
 int framebuffer_release (struct fb_info*) ;
 int radeonfb_destroy_pinned_object (int *) ;
 int unregister_framebuffer (struct fb_info*) ;

__attribute__((used)) static int radeon_fbdev_destroy(struct drm_device *dev, struct radeon_fbdev *rfbdev)
{
 struct fb_info *info;
 struct radeon_framebuffer *rfb = &rfbdev->rfb;

 if (rfbdev->helper.fbdev) {
  info = rfbdev->helper.fbdev;

  unregister_framebuffer(info);
  if (info->cmap.len)
   fb_dealloc_cmap(&info->cmap);
  framebuffer_release(info);
 }

 if (rfb->obj) {
  radeonfb_destroy_pinned_object(rfb->obj);
  rfb->obj = ((void*)0);
 }
 drm_fb_helper_fini(&rfbdev->helper);
 drm_framebuffer_unregister_private(&rfb->base);
 drm_framebuffer_cleanup(&rfb->base);

 return 0;
}

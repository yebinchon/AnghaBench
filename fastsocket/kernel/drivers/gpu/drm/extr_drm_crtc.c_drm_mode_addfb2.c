
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_mode_fb_cmd2 {int flags; int fb_id; int height; int width; } ;
struct drm_mode_config {TYPE_1__* funcs; int max_height; int min_height; int max_width; int min_width; } ;
struct TYPE_4__ {int id; } ;
struct drm_framebuffer {TYPE_2__ base; int filp_head; } ;
struct drm_file {int fbs_lock; int fbs; } ;
struct drm_device {struct drm_mode_config mode_config; } ;
struct TYPE_3__ {struct drm_framebuffer* (* fb_create ) (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2*) ;} ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_MODE_FB_INTERLACED ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_framebuffer*) ;
 int PTR_ERR (struct drm_framebuffer*) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int framebuffer_check (struct drm_mode_fb_cmd2*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_framebuffer* stub1 (struct drm_device*,struct drm_file*,struct drm_mode_fb_cmd2*) ;

int drm_mode_addfb2(struct drm_device *dev,
      void *data, struct drm_file *file_priv)
{
 struct drm_mode_fb_cmd2 *r = data;
 struct drm_mode_config *config = &dev->mode_config;
 struct drm_framebuffer *fb;
 int ret;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EINVAL;

 if (r->flags & ~DRM_MODE_FB_INTERLACED) {
  DRM_DEBUG_KMS("bad framebuffer flags 0x%08x\n", r->flags);
  return -EINVAL;
 }

 if ((config->min_width > r->width) || (r->width > config->max_width)) {
  DRM_DEBUG_KMS("bad framebuffer width %d, should be >= %d && <= %d\n",
     r->width, config->min_width, config->max_width);
  return -EINVAL;
 }
 if ((config->min_height > r->height) || (r->height > config->max_height)) {
  DRM_DEBUG_KMS("bad framebuffer height %d, should be >= %d && <= %d\n",
     r->height, config->min_height, config->max_height);
  return -EINVAL;
 }

 ret = framebuffer_check(r);
 if (ret)
  return ret;

 fb = dev->mode_config.funcs->fb_create(dev, file_priv, r);
 if (IS_ERR(fb)) {
  DRM_DEBUG_KMS("could not create framebuffer\n");
  return PTR_ERR(fb);
 }

 mutex_lock(&file_priv->fbs_lock);
 r->fb_id = fb->base.id;
 list_add(&fb->filp_head, &file_priv->fbs);
 DRM_DEBUG_KMS("[FB:%d]\n", fb->base.id);
 mutex_unlock(&file_priv->fbs_lock);


 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_plane {int pipe; int max_downscale; int (* update_plane ) (struct drm_plane*,struct drm_framebuffer*,struct drm_i915_gem_object*,int,int,unsigned int,unsigned int,int,int,int,int) ;struct drm_i915_gem_object* obj; int can_scale; } ;
struct intel_framebuffer {struct drm_i915_gem_object* obj; } ;
struct intel_crtc {int pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {int tiling_mode; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int hdisplay; int vdisplay; } ;
struct drm_crtc {TYPE_1__ mode; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int EINVAL ;
 int I915_READ (int ) ;


 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int intel_disable_primary (struct drm_crtc*) ;
 int intel_enable_primary (struct drm_crtc*) ;
 int intel_pin_and_fence_fb_obj (struct drm_device*,struct drm_i915_gem_object*,int *) ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 int intel_unpin_fb_obj (struct drm_i915_gem_object*) ;
 int intel_wait_for_vblank (struct drm_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_plane*,struct drm_framebuffer*,struct drm_i915_gem_object*,int,int,unsigned int,unsigned int,int,int,int,int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 struct intel_framebuffer* to_intel_framebuffer (struct drm_framebuffer*) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static int
intel_update_plane(struct drm_plane *plane, struct drm_crtc *crtc,
     struct drm_framebuffer *fb, int crtc_x, int crtc_y,
     unsigned int crtc_w, unsigned int crtc_h,
     uint32_t src_x, uint32_t src_y,
     uint32_t src_w, uint32_t src_h)
{
 struct drm_device *dev = plane->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct intel_plane *intel_plane = to_intel_plane(plane);
 struct intel_framebuffer *intel_fb;
 struct drm_i915_gem_object *obj, *old_obj;
 int pipe = intel_plane->pipe;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);
 int ret = 0;
 int x = src_x >> 16, y = src_y >> 16;
 int primary_w = crtc->mode.hdisplay, primary_h = crtc->mode.vdisplay;
 bool disable_primary = 0;

 intel_fb = to_intel_framebuffer(fb);
 obj = intel_fb->obj;

 old_obj = intel_plane->obj;

 src_w = src_w >> 16;
 src_h = src_h >> 16;


 if (!(I915_READ(PIPECONF(cpu_transcoder)) & PIPECONF_ENABLE))
  return -EINVAL;

 if (crtc_x >= primary_w || crtc_y >= primary_h)
  return -EINVAL;


 if (intel_plane->pipe != intel_crtc->pipe)
  return -EINVAL;


 switch (obj->tiling_mode) {
  case 129:
  case 128:
   break;
  default:
   return -EINVAL;
 }






 if ((crtc_x < 0) && ((crtc_x + crtc_w) > 0)) {
  crtc_w += crtc_x;
  crtc_x = 0;
 }
 if ((crtc_x + crtc_w) <= 0)
  goto out;
 if ((crtc_x + crtc_w) > primary_w)
  crtc_w = primary_w - crtc_x;

 if ((crtc_y < 0) && ((crtc_y + crtc_h) > 0)) {
  crtc_h += crtc_y;
  crtc_y = 0;
 }
 if ((crtc_y + crtc_h) <= 0)
  goto out;
 if (crtc_y + crtc_h > primary_h)
  crtc_h = primary_h - crtc_y;

 if (!crtc_w || !crtc_h)
  goto out;




 if (!intel_plane->can_scale && (crtc_w != src_w || crtc_h != src_h))
  return -EINVAL;





 if (((src_w * src_h) / (crtc_w * crtc_h)) > intel_plane->max_downscale)
  return -EINVAL;





 if ((crtc_x == 0) && (crtc_y == 0) &&
     (crtc_w == primary_w) && (crtc_h == primary_h))
  disable_primary = 1;

 mutex_lock(&dev->struct_mutex);

 ret = intel_pin_and_fence_fb_obj(dev, obj, ((void*)0));
 if (ret)
  goto out_unlock;

 intel_plane->obj = obj;





 if (!disable_primary)
  intel_enable_primary(crtc);

 intel_plane->update_plane(plane, fb, obj, crtc_x, crtc_y,
      crtc_w, crtc_h, x, y, src_w, src_h);

 if (disable_primary)
  intel_disable_primary(crtc);


 if (old_obj) {






  if (old_obj != obj) {
   mutex_unlock(&dev->struct_mutex);
   intel_wait_for_vblank(dev, to_intel_crtc(crtc)->pipe);
   mutex_lock(&dev->struct_mutex);
  }
  intel_unpin_fb_obj(old_obj);
 }

out_unlock:
 mutex_unlock(&dev->struct_mutex);
out:
 return ret;
}

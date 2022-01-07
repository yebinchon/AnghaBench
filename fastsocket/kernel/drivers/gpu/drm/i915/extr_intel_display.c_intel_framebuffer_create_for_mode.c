
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int pixel_format; int width; int * pitches; int height; int member_0; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int vdisplay; int hdisplay; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 int drm_mode_legacy_fb_format (int,int) ;
 struct drm_i915_gem_object* i915_gem_alloc_object (struct drm_device*,int ) ;
 struct drm_framebuffer* intel_framebuffer_create (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_i915_gem_object*) ;
 int intel_framebuffer_pitch_for_width (int ,int) ;
 int intel_framebuffer_size_for_mode (struct drm_display_mode*,int) ;

__attribute__((used)) static struct drm_framebuffer *
intel_framebuffer_create_for_mode(struct drm_device *dev,
      struct drm_display_mode *mode,
      int depth, int bpp)
{
 struct drm_i915_gem_object *obj;
 struct drm_mode_fb_cmd2 mode_cmd = { 0 };

 obj = i915_gem_alloc_object(dev,
        intel_framebuffer_size_for_mode(mode, bpp));
 if (obj == ((void*)0))
  return ERR_PTR(-ENOMEM);

 mode_cmd.width = mode->hdisplay;
 mode_cmd.height = mode->vdisplay;
 mode_cmd.pitches[0] = intel_framebuffer_pitch_for_width(mode_cmd.width,
        bpp);
 mode_cmd.pixel_format = drm_mode_legacy_fb_format(bpp, depth);

 return intel_framebuffer_create(dev, &mode_cmd, obj);
}

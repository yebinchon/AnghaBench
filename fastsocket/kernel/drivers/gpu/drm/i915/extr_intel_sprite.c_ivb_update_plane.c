
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef unsigned int u32 ;
struct intel_plane {int pipe; scalar_t__ can_scale; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int sprite_scaling_enabled; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; scalar_t__ gtt_offset; } ;
struct drm_framebuffer {int pixel_format; unsigned int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int BUG () ;






 int I915_MODIFY_DISPBASE (int ,scalar_t__) ;
 unsigned int I915_READ (int ) ;
 scalar_t__ I915_TILING_NONE ;
 int I915_WRITE (int ,unsigned int) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 int POSTING_READ (int ) ;
 int SPRCTL (int) ;
 unsigned int SPRITE_ENABLE ;
 unsigned int SPRITE_FORMAT_RGBX888 ;
 unsigned int SPRITE_FORMAT_YUV422 ;
 unsigned int SPRITE_PIPE_CSC_ENABLE ;
 unsigned int SPRITE_PIXFORMAT_MASK ;
 unsigned int SPRITE_RGB_ORDER_RGBX ;
 unsigned int SPRITE_SCALE_ENABLE ;
 unsigned int SPRITE_TILED ;
 unsigned int SPRITE_TRICKLE_FEED_DISABLE ;
 unsigned int SPRITE_YUV_BYTE_ORDER_MASK ;
 unsigned int SPRITE_YUV_ORDER_UYVY ;
 unsigned int SPRITE_YUV_ORDER_VYUY ;
 unsigned int SPRITE_YUV_ORDER_YUYV ;
 unsigned int SPRITE_YUV_ORDER_YVYU ;
 int SPRLINOFF (int) ;
 int SPROFFSET (int) ;
 int SPRPOS (int) ;
 int SPRSCALE (int) ;
 int SPRSIZE (int) ;
 int SPRSTRIDE (int) ;
 int SPRSURF (int) ;
 int SPRTILEOFF (int) ;
 int drm_format_plane_cpp (int,int ) ;
 unsigned long intel_gen4_compute_page_offset (unsigned int*,unsigned int*,scalar_t__,int,unsigned int) ;
 int intel_update_sprite_watermarks (struct drm_device*,int,unsigned int,int) ;
 int intel_update_watermarks (struct drm_device*) ;
 int intel_wait_for_vblank (struct drm_device*,int) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static void
ivb_update_plane(struct drm_plane *plane, struct drm_framebuffer *fb,
   struct drm_i915_gem_object *obj, int crtc_x, int crtc_y,
   unsigned int crtc_w, unsigned int crtc_h,
   uint32_t x, uint32_t y,
   uint32_t src_w, uint32_t src_h)
{
 struct drm_device *dev = plane->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_plane *intel_plane = to_intel_plane(plane);
 int pipe = intel_plane->pipe;
 u32 sprctl, sprscale = 0;
 unsigned long sprsurf_offset, linear_offset;
 int pixel_size = drm_format_plane_cpp(fb->pixel_format, 0);
 bool scaling_was_enabled = dev_priv->sprite_scaling_enabled;

 sprctl = I915_READ(SPRCTL(pipe));


 sprctl &= ~SPRITE_PIXFORMAT_MASK;
 sprctl &= ~SPRITE_RGB_ORDER_RGBX;
 sprctl &= ~SPRITE_YUV_BYTE_ORDER_MASK;
 sprctl &= ~SPRITE_TILED;

 switch (fb->pixel_format) {
 case 131:
  sprctl |= SPRITE_FORMAT_RGBX888 | SPRITE_RGB_ORDER_RGBX;
  break;
 case 130:
  sprctl |= SPRITE_FORMAT_RGBX888;
  break;
 case 129:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_YUYV;
  break;
 case 128:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_YVYU;
  break;
 case 133:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_UYVY;
  break;
 case 132:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_VYUY;
  break;
 default:
  BUG();
 }

 if (obj->tiling_mode != I915_TILING_NONE)
  sprctl |= SPRITE_TILED;


 sprctl |= SPRITE_TRICKLE_FEED_DISABLE;
 sprctl |= SPRITE_ENABLE;

 if (IS_HASWELL(dev))
  sprctl |= SPRITE_PIPE_CSC_ENABLE;


 src_w--;
 src_h--;
 crtc_w--;
 crtc_h--;

 intel_update_sprite_watermarks(dev, pipe, crtc_w, pixel_size);






 if (crtc_w != src_w || crtc_h != src_h) {
  dev_priv->sprite_scaling_enabled |= 1 << pipe;

  if (!scaling_was_enabled) {
   intel_update_watermarks(dev);
   intel_wait_for_vblank(dev, pipe);
  }
  sprscale = SPRITE_SCALE_ENABLE | (src_w << 16) | src_h;
 } else
  dev_priv->sprite_scaling_enabled &= ~(1 << pipe);

 I915_WRITE(SPRSTRIDE(pipe), fb->pitches[0]);
 I915_WRITE(SPRPOS(pipe), (crtc_y << 16) | crtc_x);

 linear_offset = y * fb->pitches[0] + x * pixel_size;
 sprsurf_offset =
  intel_gen4_compute_page_offset(&x, &y, obj->tiling_mode,
            pixel_size, fb->pitches[0]);
 linear_offset -= sprsurf_offset;



 if (IS_HASWELL(dev))
  I915_WRITE(SPROFFSET(pipe), (y << 16) | x);
 else if (obj->tiling_mode != I915_TILING_NONE)
  I915_WRITE(SPRTILEOFF(pipe), (y << 16) | x);
 else
  I915_WRITE(SPRLINOFF(pipe), linear_offset);

 I915_WRITE(SPRSIZE(pipe), (crtc_h << 16) | crtc_w);
 if (intel_plane->can_scale)
  I915_WRITE(SPRSCALE(pipe), sprscale);
 I915_WRITE(SPRCTL(pipe), sprctl);
 I915_MODIFY_DISPBASE(SPRSURF(pipe), obj->gtt_offset + sprsurf_offset);
 POSTING_READ(SPRSURF(pipe));


 if (scaling_was_enabled && !dev_priv->sprite_scaling_enabled)
  intel_update_watermarks(dev);
}

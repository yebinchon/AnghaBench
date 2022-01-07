
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef unsigned int u32 ;
struct intel_plane {int pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; scalar_t__ gtt_offset; } ;
struct drm_framebuffer {int pixel_format; unsigned int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int BUG () ;






 int DVSCNTR (int) ;
 int DVSLINOFF (int) ;
 int DVSPOS (int) ;
 int DVSSCALE (int) ;
 int DVSSIZE (int) ;
 int DVSSTRIDE (int) ;
 int DVSSURF (int) ;
 int DVSTILEOFF (int) ;
 unsigned int DVS_ENABLE ;
 unsigned int DVS_FORMAT_RGBX888 ;
 unsigned int DVS_FORMAT_YUV422 ;
 unsigned int DVS_PIXFORMAT_MASK ;
 unsigned int DVS_RGB_ORDER_XBGR ;
 unsigned int DVS_SCALE_ENABLE ;
 unsigned int DVS_TILED ;
 unsigned int DVS_TRICKLE_FEED_DISABLE ;
 unsigned int DVS_YUV_BYTE_ORDER_MASK ;
 unsigned int DVS_YUV_ORDER_UYVY ;
 unsigned int DVS_YUV_ORDER_VYUY ;
 unsigned int DVS_YUV_ORDER_YUYV ;
 unsigned int DVS_YUV_ORDER_YVYU ;
 int I915_MODIFY_DISPBASE (int ,scalar_t__) ;
 unsigned int I915_READ (int ) ;
 scalar_t__ I915_TILING_NONE ;
 int I915_WRITE (int ,unsigned int) ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 int POSTING_READ (int ) ;
 int drm_format_plane_cpp (int,int ) ;
 unsigned long intel_gen4_compute_page_offset (unsigned int*,unsigned int*,scalar_t__,int,unsigned int) ;
 int intel_update_sprite_watermarks (struct drm_device*,int,unsigned int,int) ;
 struct intel_plane* to_intel_plane (struct drm_plane*) ;

__attribute__((used)) static void
ilk_update_plane(struct drm_plane *plane, struct drm_framebuffer *fb,
   struct drm_i915_gem_object *obj, int crtc_x, int crtc_y,
   unsigned int crtc_w, unsigned int crtc_h,
   uint32_t x, uint32_t y,
   uint32_t src_w, uint32_t src_h)
{
 struct drm_device *dev = plane->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_plane *intel_plane = to_intel_plane(plane);
 int pipe = intel_plane->pipe;
 unsigned long dvssurf_offset, linear_offset;
 u32 dvscntr, dvsscale;
 int pixel_size = drm_format_plane_cpp(fb->pixel_format, 0);

 dvscntr = I915_READ(DVSCNTR(pipe));


 dvscntr &= ~DVS_PIXFORMAT_MASK;
 dvscntr &= ~DVS_RGB_ORDER_XBGR;
 dvscntr &= ~DVS_YUV_BYTE_ORDER_MASK;
 dvscntr &= ~DVS_TILED;

 switch (fb->pixel_format) {
 case 131:
  dvscntr |= DVS_FORMAT_RGBX888 | DVS_RGB_ORDER_XBGR;
  break;
 case 130:
  dvscntr |= DVS_FORMAT_RGBX888;
  break;
 case 129:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_YUYV;
  break;
 case 128:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_YVYU;
  break;
 case 133:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_UYVY;
  break;
 case 132:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_VYUY;
  break;
 default:
  BUG();
 }

 if (obj->tiling_mode != I915_TILING_NONE)
  dvscntr |= DVS_TILED;

 if (IS_GEN6(dev))
  dvscntr |= DVS_TRICKLE_FEED_DISABLE;
 dvscntr |= DVS_ENABLE;


 src_w--;
 src_h--;
 crtc_w--;
 crtc_h--;

 intel_update_sprite_watermarks(dev, pipe, crtc_w, pixel_size);

 dvsscale = 0;
 if (IS_GEN5(dev) || crtc_w != src_w || crtc_h != src_h)
  dvsscale = DVS_SCALE_ENABLE | (src_w << 16) | src_h;

 I915_WRITE(DVSSTRIDE(pipe), fb->pitches[0]);
 I915_WRITE(DVSPOS(pipe), (crtc_y << 16) | crtc_x);

 linear_offset = y * fb->pitches[0] + x * pixel_size;
 dvssurf_offset =
  intel_gen4_compute_page_offset(&x, &y, obj->tiling_mode,
            pixel_size, fb->pitches[0]);
 linear_offset -= dvssurf_offset;

 if (obj->tiling_mode != I915_TILING_NONE)
  I915_WRITE(DVSTILEOFF(pipe), (y << 16) | x);
 else
  I915_WRITE(DVSLINOFF(pipe), linear_offset);

 I915_WRITE(DVSSIZE(pipe), (crtc_h << 16) | crtc_w);
 I915_WRITE(DVSSCALE(pipe), dvsscale);
 I915_WRITE(DVSCNTR(pipe), dvscntr);
 I915_MODIFY_DISPBASE(DVSSURF(pipe), obj->gtt_offset + dvssurf_offset);
 POSTING_READ(DVSSURF(pipe));
}

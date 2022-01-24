#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned int uint32_t ;
typedef  unsigned int u32 ;
struct intel_plane {int pipe; scalar_t__ can_scale; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int sprite_scaling_enabled; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; scalar_t__ gtt_offset; } ;
struct drm_framebuffer {int pixel_format; unsigned int* pitches; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  DRM_FORMAT_UYVY 133 
#define  DRM_FORMAT_VYUY 132 
#define  DRM_FORMAT_XBGR8888 131 
#define  DRM_FORMAT_XRGB8888 130 
#define  DRM_FORMAT_YUYV 129 
#define  DRM_FORMAT_YVYU 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ I915_TILING_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
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
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (unsigned int*,unsigned int*,scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct drm_device*,int) ; 
 struct intel_plane* FUNC20 (struct drm_plane*) ; 

__attribute__((used)) static void
FUNC21(struct drm_plane *plane, struct drm_framebuffer *fb,
		 struct drm_i915_gem_object *obj, int crtc_x, int crtc_y,
		 unsigned int crtc_w, unsigned int crtc_h,
		 uint32_t x, uint32_t y,
		 uint32_t src_w, uint32_t src_h)
{
	struct drm_device *dev = plane->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_plane *intel_plane = FUNC20(plane);
	int pipe = intel_plane->pipe;
	u32 sprctl, sprscale = 0;
	unsigned long sprsurf_offset, linear_offset;
	int pixel_size = FUNC15(fb->pixel_format, 0);
	bool scaling_was_enabled = dev_priv->sprite_scaling_enabled;

	sprctl = FUNC2(FUNC6(pipe));

	/* Mask out pixel format bits in case we change it */
	sprctl &= ~SPRITE_PIXFORMAT_MASK;
	sprctl &= ~SPRITE_RGB_ORDER_RGBX;
	sprctl &= ~SPRITE_YUV_BYTE_ORDER_MASK;
	sprctl &= ~SPRITE_TILED;

	switch (fb->pixel_format) {
	case DRM_FORMAT_XBGR8888:
		sprctl |= SPRITE_FORMAT_RGBX888 | SPRITE_RGB_ORDER_RGBX;
		break;
	case DRM_FORMAT_XRGB8888:
		sprctl |= SPRITE_FORMAT_RGBX888;
		break;
	case DRM_FORMAT_YUYV:
		sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_YUYV;
		break;
	case DRM_FORMAT_YVYU:
		sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_YVYU;
		break;
	case DRM_FORMAT_UYVY:
		sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_UYVY;
		break;
	case DRM_FORMAT_VYUY:
		sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_VYUY;
		break;
	default:
		FUNC0();
	}

	if (obj->tiling_mode != I915_TILING_NONE)
		sprctl |= SPRITE_TILED;

	/* must disable */
	sprctl |= SPRITE_TRICKLE_FEED_DISABLE;
	sprctl |= SPRITE_ENABLE;

	if (FUNC4(dev))
		sprctl |= SPRITE_PIPE_CSC_ENABLE;

	/* Sizes are 0 based */
	src_w--;
	src_h--;
	crtc_w--;
	crtc_h--;

	FUNC17(dev, pipe, crtc_w, pixel_size);

	/*
	 * IVB workaround: must disable low power watermarks for at least
	 * one frame before enabling scaling.  LP watermarks can be re-enabled
	 * when scaling is disabled.
	 */
	if (crtc_w != src_w || crtc_h != src_h) {
		dev_priv->sprite_scaling_enabled |= 1 << pipe;

		if (!scaling_was_enabled) {
			FUNC18(dev);
			FUNC19(dev, pipe);
		}
		sprscale = SPRITE_SCALE_ENABLE | (src_w << 16) | src_h;
	} else
		dev_priv->sprite_scaling_enabled &= ~(1 << pipe);

	FUNC3(FUNC12(pipe), fb->pitches[0]);
	FUNC3(FUNC9(pipe), (crtc_y << 16) | crtc_x);

	linear_offset = y * fb->pitches[0] + x * pixel_size;
	sprsurf_offset =
		FUNC16(&x, &y, obj->tiling_mode,
					       pixel_size, fb->pitches[0]);
	linear_offset -= sprsurf_offset;

	/* HSW consolidates SPRTILEOFF and SPRLINOFF into a single SPROFFSET
	 * register */
	if (FUNC4(dev))
		FUNC3(FUNC8(pipe), (y << 16) | x);
	else if (obj->tiling_mode != I915_TILING_NONE)
		FUNC3(FUNC14(pipe), (y << 16) | x);
	else
		FUNC3(FUNC7(pipe), linear_offset);

	FUNC3(FUNC11(pipe), (crtc_h << 16) | crtc_w);
	if (intel_plane->can_scale)
		FUNC3(FUNC10(pipe), sprscale);
	FUNC3(FUNC6(pipe), sprctl);
	FUNC1(FUNC13(pipe), obj->gtt_offset + sprsurf_offset);
	FUNC5(FUNC13(pipe));

	/* potentially re-enable LP watermarks */
	if (scaling_was_enabled && !dev_priv->sprite_scaling_enabled)
		FUNC18(dev);
}
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
struct intel_plane {int pipe; } ;
struct drm_plane {struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
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
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ I915_TILING_NONE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC12 (struct drm_device*) ; 
 scalar_t__ FUNC13 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (unsigned int*,unsigned int*,scalar_t__,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct drm_device*,int,unsigned int,int) ; 
 struct intel_plane* FUNC18 (struct drm_plane*) ; 

__attribute__((used)) static void
FUNC19(struct drm_plane *plane, struct drm_framebuffer *fb,
		 struct drm_i915_gem_object *obj, int crtc_x, int crtc_y,
		 unsigned int crtc_w, unsigned int crtc_h,
		 uint32_t x, uint32_t y,
		 uint32_t src_w, uint32_t src_h)
{
	struct drm_device *dev = plane->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_plane *intel_plane = FUNC18(plane);
	int pipe = intel_plane->pipe;
	unsigned long dvssurf_offset, linear_offset;
	u32 dvscntr, dvsscale;
	int pixel_size = FUNC15(fb->pixel_format, 0);

	dvscntr = FUNC10(FUNC1(pipe));

	/* Mask out pixel format bits in case we change it */
	dvscntr &= ~DVS_PIXFORMAT_MASK;
	dvscntr &= ~DVS_RGB_ORDER_XBGR;
	dvscntr &= ~DVS_YUV_BYTE_ORDER_MASK;
	dvscntr &= ~DVS_TILED;

	switch (fb->pixel_format) {
	case DRM_FORMAT_XBGR8888:
		dvscntr |= DVS_FORMAT_RGBX888 | DVS_RGB_ORDER_XBGR;
		break;
	case DRM_FORMAT_XRGB8888:
		dvscntr |= DVS_FORMAT_RGBX888;
		break;
	case DRM_FORMAT_YUYV:
		dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_YUYV;
		break;
	case DRM_FORMAT_YVYU:
		dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_YVYU;
		break;
	case DRM_FORMAT_UYVY:
		dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_UYVY;
		break;
	case DRM_FORMAT_VYUY:
		dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_VYUY;
		break;
	default:
		FUNC0();
	}

	if (obj->tiling_mode != I915_TILING_NONE)
		dvscntr |= DVS_TILED;

	if (FUNC13(dev))
		dvscntr |= DVS_TRICKLE_FEED_DISABLE; /* must disable */
	dvscntr |= DVS_ENABLE;

	/* Sizes are 0 based */
	src_w--;
	src_h--;
	crtc_w--;
	crtc_h--;

	FUNC17(dev, pipe, crtc_w, pixel_size);

	dvsscale = 0;
	if (FUNC12(dev) || crtc_w != src_w || crtc_h != src_h)
		dvsscale = DVS_SCALE_ENABLE | (src_w << 16) | src_h;

	FUNC11(FUNC6(pipe), fb->pitches[0]);
	FUNC11(FUNC3(pipe), (crtc_y << 16) | crtc_x);

	linear_offset = y * fb->pitches[0] + x * pixel_size;
	dvssurf_offset =
		FUNC16(&x, &y, obj->tiling_mode,
					       pixel_size, fb->pitches[0]);
	linear_offset -= dvssurf_offset;

	if (obj->tiling_mode != I915_TILING_NONE)
		FUNC11(FUNC8(pipe), (y << 16) | x);
	else
		FUNC11(FUNC2(pipe), linear_offset);

	FUNC11(FUNC5(pipe), (crtc_h << 16) | crtc_w);
	FUNC11(FUNC4(pipe), dvsscale);
	FUNC11(FUNC1(pipe), dvscntr);
	FUNC9(FUNC7(pipe), obj->gtt_offset + dvssurf_offset);
	FUNC14(FUNC7(pipe));
}
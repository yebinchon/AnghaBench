#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intel_framebuffer {int /*<<< orphan*/  base; struct drm_i915_gem_object* obj; } ;
struct drm_mode_fb_cmd2 {int* pitches; int pixel_format; scalar_t__* offsets; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; int stride; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  DRM_FORMAT_ABGR2101010 143 
#define  DRM_FORMAT_ABGR8888 142 
#define  DRM_FORMAT_ARGB1555 141 
#define  DRM_FORMAT_ARGB2101010 140 
#define  DRM_FORMAT_ARGB8888 139 
#define  DRM_FORMAT_C8 138 
#define  DRM_FORMAT_RGB565 137 
#define  DRM_FORMAT_UYVY 136 
#define  DRM_FORMAT_VYUY 135 
#define  DRM_FORMAT_XBGR2101010 134 
#define  DRM_FORMAT_XBGR8888 133 
#define  DRM_FORMAT_XRGB1555 132 
#define  DRM_FORMAT_XRGB2101010 131 
#define  DRM_FORMAT_XRGB8888 130 
#define  DRM_FORMAT_YUYV 129 
#define  DRM_FORMAT_YVYU 128 
 int EINVAL ; 
 scalar_t__ I915_TILING_NONE ; 
 scalar_t__ I915_TILING_Y ; 
 TYPE_1__* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct drm_mode_fb_cmd2*) ; 
 int /*<<< orphan*/  intel_fb_funcs ; 

int FUNC5(struct drm_device *dev,
			   struct intel_framebuffer *intel_fb,
			   struct drm_mode_fb_cmd2 *mode_cmd,
			   struct drm_i915_gem_object *obj)
{
	int ret;

	if (obj->tiling_mode == I915_TILING_Y) {
		FUNC0("hardware does not support tiling Y\n");
		return -EINVAL;
	}

	if (mode_cmd->pitches[0] & 63) {
		FUNC0("pitch (%d) must be at least 64 byte aligned\n",
			  mode_cmd->pitches[0]);
		return -EINVAL;
	}

	/* FIXME <= Gen4 stride limits are bit unclear */
	if (mode_cmd->pitches[0] > 32768) {
		FUNC0("pitch (%d) must be at less than 32768\n",
			  mode_cmd->pitches[0]);
		return -EINVAL;
	}

	if (obj->tiling_mode != I915_TILING_NONE &&
	    mode_cmd->pitches[0] != obj->stride) {
		FUNC0("pitch (%d) must match tiling stride (%d)\n",
			  mode_cmd->pitches[0], obj->stride);
		return -EINVAL;
	}

	/* Reject formats not supported by any plane early. */
	switch (mode_cmd->pixel_format) {
	case DRM_FORMAT_C8:
	case DRM_FORMAT_RGB565:
	case DRM_FORMAT_XRGB8888:
	case DRM_FORMAT_ARGB8888:
		break;
	case DRM_FORMAT_XRGB1555:
	case DRM_FORMAT_ARGB1555:
		if (FUNC2(dev)->gen > 3) {
			FUNC0("invalid format: 0x%08x\n", mode_cmd->pixel_format);
			return -EINVAL;
		}
		break;
	case DRM_FORMAT_XBGR8888:
	case DRM_FORMAT_ABGR8888:
	case DRM_FORMAT_XRGB2101010:
	case DRM_FORMAT_ARGB2101010:
	case DRM_FORMAT_XBGR2101010:
	case DRM_FORMAT_ABGR2101010:
		if (FUNC2(dev)->gen < 4) {
			FUNC0("invalid format: 0x%08x\n", mode_cmd->pixel_format);
			return -EINVAL;
		}
		break;
	case DRM_FORMAT_YUYV:
	case DRM_FORMAT_UYVY:
	case DRM_FORMAT_YVYU:
	case DRM_FORMAT_VYUY:
		if (FUNC2(dev)->gen < 5) {
			FUNC0("invalid format: 0x%08x\n", mode_cmd->pixel_format);
			return -EINVAL;
		}
		break;
	default:
		FUNC0("unsupported pixel format 0x%08x\n", mode_cmd->pixel_format);
		return -EINVAL;
	}

	/* FIXME need to adjust LINOFF/TILEOFF accordingly. */
	if (mode_cmd->offsets[0] != 0)
		return -EINVAL;

	FUNC4(&intel_fb->base, mode_cmd);
	intel_fb->obj = obj;

	ret = FUNC3(dev, &intel_fb->base, &intel_fb_funcs);
	if (ret) {
		FUNC1("framebuffer init failed %d\n", ret);
		return ret;
	}

	return 0;
}
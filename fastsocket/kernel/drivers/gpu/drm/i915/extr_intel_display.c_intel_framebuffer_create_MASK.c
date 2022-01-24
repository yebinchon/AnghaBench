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
struct drm_framebuffer {int dummy; } ;
struct intel_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct drm_device*,struct intel_framebuffer*,struct drm_mode_fb_cmd2*,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_framebuffer*) ; 
 struct intel_framebuffer* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC5(struct drm_device *dev,
			 struct drm_mode_fb_cmd2 *mode_cmd,
			 struct drm_i915_gem_object *obj)
{
	struct intel_framebuffer *intel_fb;
	int ret;

	intel_fb = FUNC4(sizeof(*intel_fb), GFP_KERNEL);
	if (!intel_fb) {
		FUNC1(&obj->base);
		return FUNC0(-ENOMEM);
	}

	ret = FUNC2(dev, intel_fb, mode_cmd, obj);
	if (ret) {
		FUNC1(&obj->base);
		FUNC3(intel_fb);
		return FUNC0(ret);
	}

	return &intel_fb->base;
}
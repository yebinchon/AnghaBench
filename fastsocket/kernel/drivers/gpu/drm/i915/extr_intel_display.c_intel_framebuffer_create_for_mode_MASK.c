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
struct drm_mode_fb_cmd2 {int /*<<< orphan*/  pixel_format; int /*<<< orphan*/  width; int /*<<< orphan*/ * pitches; int /*<<< orphan*/  height; int /*<<< orphan*/  member_0; } ;
struct drm_i915_gem_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int /*<<< orphan*/  vdisplay; int /*<<< orphan*/  hdisplay; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct drm_i915_gem_object* FUNC2 (struct drm_device*,int /*<<< orphan*/ ) ; 
 struct drm_framebuffer* FUNC3 (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_display_mode*,int) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC6(struct drm_device *dev,
				  struct drm_display_mode *mode,
				  int depth, int bpp)
{
	struct drm_i915_gem_object *obj;
	struct drm_mode_fb_cmd2 mode_cmd = { 0 };

	obj = FUNC2(dev,
				    FUNC5(mode, bpp));
	if (obj == NULL)
		return FUNC0(-ENOMEM);

	mode_cmd.width = mode->hdisplay;
	mode_cmd.height = mode->vdisplay;
	mode_cmd.pitches[0] = FUNC4(mode_cmd.width,
								bpp);
	mode_cmd.pixel_format = FUNC1(bpp, depth);

	return FUNC3(dev, &mode_cmd, obj);
}
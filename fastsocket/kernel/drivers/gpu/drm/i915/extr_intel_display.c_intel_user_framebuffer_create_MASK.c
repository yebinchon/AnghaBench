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
struct drm_mode_fb_cmd2 {int /*<<< orphan*/ * handles; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct drm_framebuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 struct drm_framebuffer* FUNC2 (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_i915_gem_object*) ; 
 struct drm_i915_gem_object* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC4(struct drm_device *dev,
			      struct drm_file *filp,
			      struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_i915_gem_object *obj;

	obj = FUNC3(FUNC1(dev, filp,
						mode_cmd->handles[0]));
	if (&obj->base == NULL)
		return FUNC0(-ENOENT);

	return FUNC2(dev, mode_cmd, obj);
}
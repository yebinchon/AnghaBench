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
struct drm_framebuffer {int dummy; } ;
struct radeon_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct drm_gem_object* FUNC2 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_framebuffer*) ; 
 struct radeon_framebuffer* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_device*,struct radeon_framebuffer*,struct drm_mode_fb_cmd2*,struct drm_gem_object*) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC7(struct drm_device *dev,
			       struct drm_file *file_priv,
			       struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct drm_gem_object *obj;
	struct radeon_framebuffer *radeon_fb;
	int ret;

	obj = FUNC2(dev, file_priv, mode_cmd->handles[0]);
	if (obj ==  NULL) {
		FUNC1(&dev->pdev->dev, "No GEM object associated to handle 0x%08X, "
			"can't create framebuffer\n", mode_cmd->handles[0]);
		return FUNC0(-ENOENT);
	}

	radeon_fb = FUNC5(sizeof(*radeon_fb), GFP_KERNEL);
	if (radeon_fb == NULL) {
		FUNC3(obj);
		return FUNC0(-ENOMEM);
	}

	ret = FUNC6(dev, radeon_fb, mode_cmd, obj);
	if (ret) {
		FUNC4(radeon_fb);
		FUNC3(obj);
		return FUNC0(ret);
	}

	return &radeon_fb->base;
}
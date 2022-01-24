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
struct nouveau_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int /*<<< orphan*/ * handles; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct drm_framebuffer* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct drm_gem_object* FUNC1 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_gem_object*) ; 
 struct nouveau_framebuffer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct drm_device*,struct nouveau_framebuffer*,struct drm_mode_fb_cmd2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_object*) ; 

__attribute__((used)) static struct drm_framebuffer *
FUNC6(struct drm_device *dev,
				struct drm_file *file_priv,
				struct drm_mode_fb_cmd2 *mode_cmd)
{
	struct nouveau_framebuffer *nouveau_fb;
	struct drm_gem_object *gem;
	int ret;

	gem = FUNC1(dev, file_priv, mode_cmd->handles[0]);
	if (!gem)
		return FUNC0(-ENOENT);

	nouveau_fb = FUNC3(sizeof(struct nouveau_framebuffer), GFP_KERNEL);
	if (!nouveau_fb)
		return FUNC0(-ENOMEM);

	ret = FUNC4(dev, nouveau_fb, mode_cmd, FUNC5(gem));
	if (ret) {
		FUNC2(gem);
		return FUNC0(ret);
	}

	return &nouveau_fb->base;
}
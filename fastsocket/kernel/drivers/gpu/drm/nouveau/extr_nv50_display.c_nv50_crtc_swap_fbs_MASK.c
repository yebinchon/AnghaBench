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
struct nouveau_framebuffer {int /*<<< orphan*/  nvbo; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {struct drm_framebuffer* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nouveau_framebuffer* FUNC2 (struct drm_framebuffer*) ; 

__attribute__((used)) static int
FUNC3(struct drm_crtc *crtc, struct drm_framebuffer *old_fb)
{
	struct nouveau_framebuffer *nvfb = FUNC2(crtc->fb);
	int ret;

	ret = FUNC0(nvfb->nvbo, TTM_PL_FLAG_VRAM);
	if (ret)
		return ret;

	if (old_fb) {
		nvfb = FUNC2(old_fb);
		FUNC1(nvfb->nvbo);
	}

	return 0;
}
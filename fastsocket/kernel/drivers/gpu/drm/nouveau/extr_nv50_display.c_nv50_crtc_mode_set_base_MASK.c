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
struct nouveau_drm {int dummy; } ;
struct nouveau_crtc {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  fb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*) ; 
 struct nouveau_crtc* FUNC1 (struct drm_crtc*) ; 
 struct nouveau_drm* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_crtc*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC4 (struct drm_crtc*,struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 

__attribute__((used)) static int
FUNC7(struct drm_crtc *crtc, int x, int y,
			struct drm_framebuffer *old_fb)
{
	struct nouveau_drm *drm = FUNC2(crtc->dev);
	struct nouveau_crtc *nv_crtc = FUNC1(crtc);
	int ret;

	if (!crtc->fb) {
		FUNC0(drm, "No FB bound\n");
		return 0;
	}

	ret = FUNC4(crtc, old_fb);
	if (ret)
		return ret;

	FUNC6(crtc);
	FUNC3(nv_crtc, crtc->fb, x, y, true);
	FUNC5(crtc, crtc->fb, NULL, 1);
	return 0;
}
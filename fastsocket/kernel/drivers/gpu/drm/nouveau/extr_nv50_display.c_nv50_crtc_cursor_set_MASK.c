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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int visible; int /*<<< orphan*/  nvbo; } ;
struct nouveau_crtc {TYPE_1__ cursor; } ;
struct nouveau_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (struct nouveau_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bo*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_bo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct nouveau_crtc* FUNC6 (struct drm_crtc*) ; 
 struct nouveau_bo* FUNC7 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_crtc*,int,int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(struct drm_crtc *crtc, struct drm_file *file_priv,
		     uint32_t handle, uint32_t width, uint32_t height)
{
	struct nouveau_crtc *nv_crtc = FUNC6(crtc);
	struct drm_device *dev = crtc->dev;
	struct drm_gem_object *gem;
	struct nouveau_bo *nvbo;
	bool visible = (handle != 0);
	int i, ret = 0;

	if (visible) {
		if (width != 64 || height != 64)
			return -EINVAL;

		gem = FUNC0(dev, file_priv, handle);
		if (FUNC9(!gem))
			return -ENOENT;
		nvbo = FUNC7(gem);

		ret = FUNC2(nvbo);
		if (ret == 0) {
			for (i = 0; i < 64 * 64; i++) {
				u32 v = FUNC3(nvbo, i);
				FUNC5(nv_crtc->cursor.nvbo, i, v);
			}
			FUNC4(nvbo);
		}

		FUNC1(gem);
	}

	if (visible != nv_crtc->cursor.visible) {
		FUNC8(nv_crtc, visible, true);
		nv_crtc->cursor.visible = visible;
	}

	return ret;
}
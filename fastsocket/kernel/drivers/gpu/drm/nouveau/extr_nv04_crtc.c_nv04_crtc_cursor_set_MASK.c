#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct nouveau_drm {int /*<<< orphan*/  device; struct drm_device* dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* show ) (struct nouveau_crtc*,int) ;int /*<<< orphan*/  offset; int /*<<< orphan*/  (* set_offset ) (struct nouveau_crtc*,int /*<<< orphan*/ ) ;TYPE_4__* nvbo; int /*<<< orphan*/  (* hide ) (struct nouveau_crtc*,int) ;} ;
struct nouveau_crtc {TYPE_2__ cursor; } ;
struct nouveau_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  offset; } ;
struct TYPE_9__ {TYPE_1__ bo; } ;
struct TYPE_8__ {int chipset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct drm_gem_object* FUNC0 (struct drm_device*,struct drm_file*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_gem_object*) ; 
 int FUNC2 (struct nouveau_bo*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_bo*) ; 
 struct nouveau_crtc* FUNC4 (struct drm_crtc*) ; 
 struct nouveau_drm* FUNC5 (int /*<<< orphan*/ ) ; 
 struct nouveau_bo* FUNC6 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*,struct nouveau_bo*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_device*,struct nouveau_bo*,TYPE_4__*) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct nouveau_crtc*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nouveau_crtc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct nouveau_crtc*,int) ; 

__attribute__((used)) static int
FUNC13(struct drm_crtc *crtc, struct drm_file *file_priv,
		     uint32_t buffer_handle, uint32_t width, uint32_t height)
{
	struct nouveau_drm *drm = FUNC5(crtc->dev);
	struct drm_device *dev = drm->dev;
	struct nouveau_crtc *nv_crtc = FUNC4(crtc);
	struct nouveau_bo *cursor = NULL;
	struct drm_gem_object *gem;
	int ret = 0;

	if (!buffer_handle) {
		nv_crtc->cursor.hide(nv_crtc, true);
		return 0;
	}

	if (width != 64 || height != 64)
		return -EINVAL;

	gem = FUNC0(dev, file_priv, buffer_handle);
	if (!gem)
		return -ENOENT;
	cursor = FUNC6(gem);

	ret = FUNC2(cursor);
	if (ret)
		goto out;

	if (FUNC9(drm->device)->chipset >= 0x11)
		FUNC8(dev, cursor, nv_crtc->cursor.nvbo);
	else
		FUNC7(dev, cursor, nv_crtc->cursor.nvbo);

	FUNC3(cursor);
	nv_crtc->cursor.offset = nv_crtc->cursor.nvbo->bo.offset;
	nv_crtc->cursor.set_offset(nv_crtc, nv_crtc->cursor.offset);
	nv_crtc->cursor.show(nv_crtc, true);
out:
	FUNC1(gem);
	return ret;
}
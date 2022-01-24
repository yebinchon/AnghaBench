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
typedef  int u32 ;
struct nv50_mast {int dummy; } ;
struct drm_display_mode {int hdisplay; int vdisplay; int flags; } ;
struct drm_crtc {int /*<<< orphan*/  fb; struct drm_display_mode mode; int /*<<< orphan*/  dev; } ;
struct nouveau_crtc {int index; struct drm_crtc base; } ;
struct nouveau_connector {int scaling_mode; scalar_t__ underscan; int underscan_hborder; int underscan_vborder; scalar_t__ edid; struct drm_display_mode* native_mode; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLSCAN ; 
#define  DRM_MODE_SCALE_ASPECT 129 
#define  DRM_MODE_SCALE_CENTER 128 
 int DRM_MODE_SCALE_NONE ; 
 scalar_t__ NVD0_DISP_MAST_CLASS ; 
 scalar_t__ UNDERSCAN_AUTO ; 
 scalar_t__ UNDERSCAN_ON ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,struct nv50_mast*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int* FUNC4 (struct nv50_mast*,int) ; 
 int FUNC5 (int,int) ; 
 struct nouveau_connector* FUNC6 (struct nouveau_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_crtc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_crtc*) ; 
 struct nv50_mast* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct nv50_mast*) ; 

__attribute__((used)) static int
FUNC11(struct nouveau_crtc *nv_crtc, bool update)
{
	struct nv50_mast *mast = FUNC9(nv_crtc->base.dev);
	struct drm_display_mode *omode, *umode = &nv_crtc->base.mode;
	struct drm_crtc *crtc = &nv_crtc->base;
	struct nouveau_connector *nv_connector;
	int mode = DRM_MODE_SCALE_NONE;
	u32 oX, oY, *push;

	/* start off at the resolution we programmed the crtc for, this
	 * effectively handles NONE/FULL scaling
	 */
	nv_connector = FUNC6(nv_crtc);
	if (nv_connector && nv_connector->native_mode)
		mode = nv_connector->scaling_mode;

	if (mode != DRM_MODE_SCALE_NONE)
		omode = nv_connector->native_mode;
	else
		omode = umode;

	oX = omode->hdisplay;
	oY = omode->vdisplay;
	if (omode->flags & DRM_MODE_FLAG_DBLSCAN)
		oY *= 2;

	/* add overscan compensation if necessary, will keep the aspect
	 * ratio the same as the backend mode unless overridden by the
	 * user setting both hborder and vborder properties.
	 */
	if (nv_connector && ( nv_connector->underscan == UNDERSCAN_ON ||
			     (nv_connector->underscan == UNDERSCAN_AUTO &&
			      nv_connector->edid &&
			      FUNC0(nv_connector->edid)))) {
		u32 bX = nv_connector->underscan_hborder;
		u32 bY = nv_connector->underscan_vborder;
		u32 aspect = (oY << 19) / oX;

		if (bX) {
			oX -= (bX * 2);
			if (bY) oY -= (bY * 2);
			else    oY  = ((oX * aspect) + (aspect / 2)) >> 19;
		} else {
			oX -= (oX >> 4) + 32;
			if (bY) oY -= (bY * 2);
			else    oY  = ((oX * aspect) + (aspect / 2)) >> 19;
		}
	}

	/* handle CENTER/ASPECT scaling, taking into account the areas
	 * removed already for overscan compensation
	 */
	switch (mode) {
	case DRM_MODE_SCALE_CENTER:
		oX = FUNC5((u32)umode->hdisplay, oX);
		oY = FUNC5((u32)umode->vdisplay, oY);
		/* fall-through */
	case DRM_MODE_SCALE_ASPECT:
		if (oY < oX) {
			u32 aspect = (umode->hdisplay << 19) / umode->vdisplay;
			oX = ((oY * aspect) + (aspect / 2)) >> 19;
		} else {
			u32 aspect = (umode->vdisplay << 19) / umode->hdisplay;
			oY = ((oX * aspect) + (aspect / 2)) >> 19;
		}
		break;
	default:
		break;
	}

	push = FUNC4(mast, 8);
	if (push) {
		if (FUNC10(mast) < NVD0_DISP_MAST_CLASS) {
			/*XXX: SCALE_CTRL_ACTIVE??? */
			FUNC3(push, 0x08d8 + (nv_crtc->index * 0x400), 2);
			FUNC1(push, (oY << 16) | oX);
			FUNC1(push, (oY << 16) | oX);
			FUNC3(push, 0x08a4 + (nv_crtc->index * 0x400), 1);
			FUNC1(push, 0x00000000);
			FUNC3(push, 0x08c8 + (nv_crtc->index * 0x400), 1);
			FUNC1(push, umode->vdisplay << 16 | umode->hdisplay);
		} else {
			FUNC3(push, 0x04c0 + (nv_crtc->index * 0x300), 3);
			FUNC1(push, (oY << 16) | oX);
			FUNC1(push, (oY << 16) | oX);
			FUNC1(push, (oY << 16) | oX);
			FUNC3(push, 0x0494 + (nv_crtc->index * 0x300), 1);
			FUNC1(push, 0x00000000);
			FUNC3(push, 0x04b8 + (nv_crtc->index * 0x300), 1);
			FUNC1(push, umode->vdisplay << 16 | umode->hdisplay);
		}

		FUNC2(push, mast);

		if (update) {
			FUNC8(crtc);
			FUNC7(crtc, crtc->fb, NULL, 1);
		}
	}

	return 0;
}
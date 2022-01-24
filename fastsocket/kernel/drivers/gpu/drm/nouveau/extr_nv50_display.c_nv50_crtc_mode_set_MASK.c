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
struct nouveau_crtc {int index; } ;
struct nouveau_connector {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int flags; int htotal; int hsync_end; int hsync_start; int hdisplay; int vtotal; int vsync_end; int vsync_start; int vdisplay; int clock; } ;
struct drm_crtc {int /*<<< orphan*/  fb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRM_MODE_FLAG_DBLSCAN ; 
 int DRM_MODE_FLAG_INTERLACE ; 
 scalar_t__ NVD0_DISP_MAST_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct nv50_mast*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int* FUNC3 (struct nv50_mast*,int) ; 
 struct nouveau_crtc* FUNC4 (struct drm_crtc*) ; 
 struct nouveau_connector* FUNC5 (struct nouveau_crtc*) ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_crtc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_crtc*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nouveau_crtc*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct nouveau_crtc*,int) ; 
 int FUNC10 (struct drm_crtc*,struct drm_framebuffer*) ; 
 struct nv50_mast* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct nv50_mast*) ; 

__attribute__((used)) static int
FUNC13(struct drm_crtc *crtc, struct drm_display_mode *umode,
		   struct drm_display_mode *mode, int x, int y,
		   struct drm_framebuffer *old_fb)
{
	struct nv50_mast *mast = FUNC11(crtc->dev);
	struct nouveau_crtc *nv_crtc = FUNC4(crtc);
	struct nouveau_connector *nv_connector;
	u32 ilace = (mode->flags & DRM_MODE_FLAG_INTERLACE) ? 2 : 1;
	u32 vscan = (mode->flags & DRM_MODE_FLAG_DBLSCAN) ? 2 : 1;
	u32 hactive, hsynce, hbackp, hfrontp, hblanke, hblanks;
	u32 vactive, vsynce, vbackp, vfrontp, vblanke, vblanks;
	u32 vblan2e = 0, vblan2s = 1;
	u32 *push;
	int ret;

	hactive = mode->htotal;
	hsynce  = mode->hsync_end - mode->hsync_start - 1;
	hbackp  = mode->htotal - mode->hsync_end;
	hblanke = hsynce + hbackp;
	hfrontp = mode->hsync_start - mode->hdisplay;
	hblanks = mode->htotal - hfrontp - 1;

	vactive = mode->vtotal * vscan / ilace;
	vsynce  = ((mode->vsync_end - mode->vsync_start) * vscan / ilace) - 1;
	vbackp  = (mode->vtotal - mode->vsync_end) * vscan / ilace;
	vblanke = vsynce + vbackp;
	vfrontp = (mode->vsync_start - mode->vdisplay) * vscan / ilace;
	vblanks = vactive - vfrontp - 1;
	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
		vblan2e = vactive + vsynce + vbackp;
		vblan2s = vblan2e + (mode->vdisplay * vscan / ilace);
		vactive = (vactive * 2) + 1;
	}

	ret = FUNC10(crtc, old_fb);
	if (ret)
		return ret;

	push = FUNC3(mast, 64);
	if (push) {
		if (FUNC12(mast) < NVD0_DISP_MAST_CLASS) {
			FUNC2(push, 0x0804 + (nv_crtc->index * 0x400), 2);
			FUNC0(push, 0x00800000 | mode->clock);
			FUNC0(push, (ilace == 2) ? 2 : 0);
			FUNC2(push, 0x0810 + (nv_crtc->index * 0x400), 6);
			FUNC0(push, 0x00000000);
			FUNC0(push, (vactive << 16) | hactive);
			FUNC0(push, ( vsynce << 16) | hsynce);
			FUNC0(push, (vblanke << 16) | hblanke);
			FUNC0(push, (vblanks << 16) | hblanks);
			FUNC0(push, (vblan2e << 16) | vblan2s);
			FUNC2(push, 0x082c + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x00000000);
			FUNC2(push, 0x0900 + (nv_crtc->index * 0x400), 2);
			FUNC0(push, 0x00000311);
			FUNC0(push, 0x00000100);
		} else {
			FUNC2(push, 0x0410 + (nv_crtc->index * 0x300), 6);
			FUNC0(push, 0x00000000);
			FUNC0(push, (vactive << 16) | hactive);
			FUNC0(push, ( vsynce << 16) | hsynce);
			FUNC0(push, (vblanke << 16) | hblanke);
			FUNC0(push, (vblanks << 16) | hblanks);
			FUNC0(push, (vblan2e << 16) | vblan2s);
			FUNC2(push, 0x042c + (nv_crtc->index * 0x300), 1);
			FUNC0(push, 0x00000000); /* ??? */
			FUNC2(push, 0x0450 + (nv_crtc->index * 0x300), 3);
			FUNC0(push, mode->clock * 1000);
			FUNC0(push, 0x00200000); /* ??? */
			FUNC0(push, mode->clock * 1000);
			FUNC2(push, 0x04d0 + (nv_crtc->index * 0x300), 2);
			FUNC0(push, 0x00000311);
			FUNC0(push, 0x00000100);
		}

		FUNC1(push, mast);
	}

	nv_connector = FUNC5(nv_crtc);
	FUNC7(nv_crtc, false);
	FUNC9(nv_crtc, false);
	FUNC6(nv_crtc, false);
	FUNC8(nv_crtc, crtc->fb, x, y, false);
	return 0;
}
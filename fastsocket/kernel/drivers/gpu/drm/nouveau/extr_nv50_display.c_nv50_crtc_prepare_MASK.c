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
typedef  int /*<<< orphan*/  u32 ;
struct nv50_mast {int dummy; } ;
struct nouveau_crtc {int index; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ NV84_DISP_MAST_CLASS ; 
 scalar_t__ NVD0_DISP_MAST_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_mast*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_mast*,int) ; 
 struct nouveau_crtc* FUNC4 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_crtc*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_crtc*) ; 
 struct nv50_mast* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct nv50_mast*) ; 

__attribute__((used)) static void
FUNC9(struct drm_crtc *crtc)
{
	struct nouveau_crtc *nv_crtc = FUNC4(crtc);
	struct nv50_mast *mast = FUNC7(crtc->dev);
	u32 *push;

	FUNC6(crtc);

	push = FUNC3(mast, 2);
	if (push) {
		if (FUNC8(mast) < NV84_DISP_MAST_CLASS) {
			FUNC2(push, 0x0874 + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x00000000);
			FUNC2(push, 0x0840 + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x40000000);
		} else
		if (FUNC8(mast) <  NVD0_DISP_MAST_CLASS) {
			FUNC2(push, 0x0874 + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x00000000);
			FUNC2(push, 0x0840 + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x40000000);
			FUNC2(push, 0x085c + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x00000000);
		} else {
			FUNC2(push, 0x0474 + (nv_crtc->index * 0x300), 1);
			FUNC0(push, 0x00000000);
			FUNC2(push, 0x0440 + (nv_crtc->index * 0x300), 1);
			FUNC0(push, 0x03000000);
			FUNC2(push, 0x045c + (nv_crtc->index * 0x300), 1);
			FUNC0(push, 0x00000000);
		}

		FUNC1(push, mast);
	}

	FUNC5(nv_crtc, false, false);
}
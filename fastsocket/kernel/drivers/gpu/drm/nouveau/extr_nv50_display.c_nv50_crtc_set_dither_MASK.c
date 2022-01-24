#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nv50_mast {int dummy; } ;
struct TYPE_5__ {TYPE_1__* fb; int /*<<< orphan*/  dev; } ;
struct nouveau_crtc {int index; TYPE_2__ base; } ;
struct TYPE_6__ {int bpc; } ;
struct drm_connector {TYPE_3__ display_info; } ;
struct nouveau_connector {scalar_t__ dithering_mode; int dithering_depth; struct drm_connector base; } ;
struct TYPE_4__ {int depth; } ;

/* Variables and functions */
 int DITHERING_DEPTH_8BPC ; 
 int DITHERING_DEPTH_AUTO ; 
 scalar_t__ DITHERING_MODE_AUTO ; 
 int DITHERING_MODE_DYNAMIC2X2 ; 
 scalar_t__ NVD0_DISP_MAST_CLASS ; 
 scalar_t__ NVE0_DISP_MAST_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct nv50_mast*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int* FUNC3 (struct nv50_mast*,int) ; 
 struct nouveau_connector* FUNC4 (struct nouveau_crtc*) ; 
 struct nv50_mast* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nv50_mast*) ; 

__attribute__((used)) static int
FUNC7(struct nouveau_crtc *nv_crtc, bool update)
{
	struct nv50_mast *mast = FUNC5(nv_crtc->base.dev);
	struct nouveau_connector *nv_connector;
	struct drm_connector *connector;
	u32 *push, mode = 0x00;

	nv_connector = FUNC4(nv_crtc);
	connector = &nv_connector->base;
	if (nv_connector->dithering_mode == DITHERING_MODE_AUTO) {
		if (nv_crtc->base.fb->depth > connector->display_info.bpc * 3)
			mode = DITHERING_MODE_DYNAMIC2X2;
	} else {
		mode = nv_connector->dithering_mode;
	}

	if (nv_connector->dithering_depth == DITHERING_DEPTH_AUTO) {
		if (connector->display_info.bpc >= 8)
			mode |= DITHERING_DEPTH_8BPC;
	} else {
		mode |= nv_connector->dithering_depth;
	}

	push = FUNC3(mast, 4);
	if (push) {
		if (FUNC6(mast) < NVD0_DISP_MAST_CLASS) {
			FUNC2(push, 0x08a0 + (nv_crtc->index * 0x0400), 1);
			FUNC0(push, mode);
		} else
		if (FUNC6(mast) < NVE0_DISP_MAST_CLASS) {
			FUNC2(push, 0x0490 + (nv_crtc->index * 0x0300), 1);
			FUNC0(push, mode);
		} else {
			FUNC2(push, 0x04a0 + (nv_crtc->index * 0x0300), 1);
			FUNC0(push, mode);
		}

		if (update) {
			FUNC2(push, 0x0080, 1);
			FUNC0(push, 0x00000000);
		}
		FUNC1(push, mast);
	}

	return 0;
}
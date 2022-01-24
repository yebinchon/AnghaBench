#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  base; } ;
struct TYPE_11__ {int /*<<< orphan*/  base; } ;
struct TYPE_10__ {int /*<<< orphan*/  base; } ;
struct TYPE_9__ {int /*<<< orphan*/  base; } ;
struct nv50_head {TYPE_4__ curs; TYPE_3__ sync; TYPE_2__ oimm; TYPE_1__ ovly; } ;
struct nv50_disp {int /*<<< orphan*/  core; } ;
struct nouveau_event {int /*<<< orphan*/  lock; } ;
struct TYPE_15__ {scalar_t__ nvbo; } ;
struct TYPE_14__ {scalar_t__ nvbo; } ;
struct TYPE_13__ {int /*<<< orphan*/  head; } ;
struct nouveau_crtc {TYPE_7__ lut; TYPE_6__ cursor; TYPE_5__ vblank; } ;
struct drm_crtc {int /*<<< orphan*/  dev; } ;
struct TYPE_16__ {struct nouveau_event* vblank; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 struct nouveau_crtc* FUNC6 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC8 (int /*<<< orphan*/ ) ; 
 struct nv50_disp* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct nv50_head* FUNC11 (struct drm_crtc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC15(struct drm_crtc *crtc)
{
	struct nouveau_event *event = FUNC8(FUNC7(crtc->dev))->vblank;
	struct nouveau_crtc *nv_crtc = FUNC6(crtc);
	struct nv50_disp *disp = FUNC9(crtc->dev);
	struct nv50_head *head = FUNC11(crtc);
	unsigned long flags;

	FUNC10(disp->core, &head->ovly.base);
	FUNC12(disp->core, &head->oimm.base);
	FUNC10(disp->core, &head->sync.base);
	FUNC12(disp->core, &head->curs.base);

	FUNC13(&event->lock, flags);
	FUNC2(&nv_crtc->vblank.head);
	FUNC14(&event->lock, flags);

	FUNC4(nv_crtc->cursor.nvbo);
	if (nv_crtc->cursor.nvbo)
		FUNC5(nv_crtc->cursor.nvbo);
	FUNC3(NULL, &nv_crtc->cursor.nvbo);
	FUNC4(nv_crtc->lut.nvbo);
	if (nv_crtc->lut.nvbo)
		FUNC5(nv_crtc->lut.nvbo);
	FUNC3(NULL, &nv_crtc->lut.nvbo);
	FUNC0(crtc);
	FUNC1(crtc);
}
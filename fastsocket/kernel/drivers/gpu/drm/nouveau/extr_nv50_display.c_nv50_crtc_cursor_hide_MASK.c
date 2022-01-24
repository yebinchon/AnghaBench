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
typedef  int /*<<< orphan*/  u32 ;
struct nv50_mast {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nouveau_crtc {int index; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ NV84_DISP_MAST_CLASS ; 
 scalar_t__ NVD0_DISP_MAST_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_mast*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_mast*,int) ; 
 struct nv50_mast* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct nv50_mast*) ; 

__attribute__((used)) static void
FUNC6(struct nouveau_crtc *nv_crtc)
{
	struct nv50_mast *mast = FUNC4(nv_crtc->base.dev);
	u32 *push = FUNC3(mast, 16);
	if (push) {
		if (FUNC5(mast) < NV84_DISP_MAST_CLASS) {
			FUNC2(push, 0x0880 + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x05000000);
		} else
		if (FUNC5(mast) < NVD0_DISP_MAST_CLASS) {
			FUNC2(push, 0x0880 + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x05000000);
			FUNC2(push, 0x089c + (nv_crtc->index * 0x400), 1);
			FUNC0(push, 0x00000000);
		} else {
			FUNC2(push, 0x0480 + (nv_crtc->index * 0x300), 1);
			FUNC0(push, 0x05000000);
			FUNC2(push, 0x048c + (nv_crtc->index * 0x300), 1);
			FUNC0(push, 0x00000000);
		}
		FUNC1(push, mast);
	}
}
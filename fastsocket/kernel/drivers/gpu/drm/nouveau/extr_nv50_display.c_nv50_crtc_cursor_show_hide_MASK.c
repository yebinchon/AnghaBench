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
struct nouveau_crtc {TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_mast*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_mast*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nouveau_crtc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nouveau_crtc*) ; 
 struct nv50_mast* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct nouveau_crtc *nv_crtc, bool show, bool update)
{
	struct nv50_mast *mast = FUNC6(nv_crtc->base.dev);

	if (show)
		FUNC5(nv_crtc);
	else
		FUNC4(nv_crtc);

	if (update) {
		u32 *push = FUNC3(mast, 2);
		if (push) {
			FUNC2(push, 0x0080, 1);
			FUNC0(push, 0x00000000);
			FUNC1(push, mast);
		}
	}
}
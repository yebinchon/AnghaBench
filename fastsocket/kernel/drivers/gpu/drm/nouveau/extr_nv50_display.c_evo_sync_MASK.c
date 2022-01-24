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
struct nv50_disp {int /*<<< orphan*/  sync; } ;
struct nouveau_device {int dummy; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EVO_MAST_NTFY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nv50_mast*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  evo_sync_wait ; 
 int /*<<< orphan*/ * FUNC3 (struct nv50_mast*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 struct nouveau_device* FUNC5 (struct drm_device*) ; 
 struct nv50_disp* FUNC6 (struct drm_device*) ; 
 struct nv50_mast* FUNC7 (struct drm_device*) ; 
 scalar_t__ FUNC8 (struct nouveau_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct drm_device *dev)
{
	struct nouveau_device *device = FUNC5(dev);
	struct nv50_disp *disp = FUNC6(dev);
	struct nv50_mast *mast = FUNC7(dev);
	u32 *push = FUNC3(mast, 8);
	if (push) {
		FUNC4(disp->sync, EVO_MAST_NTFY, 0x00000000);
		FUNC2(push, 0x0084, 1);
		FUNC0(push, 0x80000000 | EVO_MAST_NTFY);
		FUNC2(push, 0x0080, 2);
		FUNC0(push, 0x00000000);
		FUNC0(push, 0x00000000);
		FUNC1(push, mast);
		if (FUNC8(device, evo_sync_wait, disp->sync))
			return 0;
	}

	return -EBUSY;
}
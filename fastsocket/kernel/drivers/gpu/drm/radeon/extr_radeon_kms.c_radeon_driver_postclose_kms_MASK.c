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
struct radeon_fpriv {int /*<<< orphan*/  vm; } ;
struct TYPE_2__ {int /*<<< orphan*/  bo; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ ring_tmp_bo; } ;
struct radeon_bo_va {int dummy; } ;
struct drm_file {struct radeon_fpriv* driver_priv; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ CHIP_CAYMAN ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_fpriv*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct radeon_bo_va* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,struct radeon_bo_va*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ *) ; 

void FUNC6(struct drm_device *dev,
				 struct drm_file *file_priv)
{
	struct radeon_device *rdev = dev->dev_private;

	/* new gpu have virtual address space support */
	if (rdev->family >= CHIP_CAYMAN && file_priv->driver_priv) {
		struct radeon_fpriv *fpriv = file_priv->driver_priv;
		struct radeon_bo_va *bo_va;
		int r;

		r = FUNC1(rdev->ring_tmp_bo.bo, false);
		if (!r) {
			bo_va = FUNC3(&fpriv->vm,
						  rdev->ring_tmp_bo.bo);
			if (bo_va)
				FUNC4(rdev, bo_va);
			FUNC2(rdev->ring_tmp_bo.bo);
		}

		FUNC5(rdev, &fpriv->vm);
		FUNC0(fpriv);
		file_priv->driver_priv = NULL;
	}
}
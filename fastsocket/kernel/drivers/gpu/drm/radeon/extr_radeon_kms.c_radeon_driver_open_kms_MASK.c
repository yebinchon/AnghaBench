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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RADEON_VA_IB_OFFSET ; 
 int RADEON_VM_PAGE_READABLE ; 
 int RADEON_VM_PAGE_SNOOPED ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_fpriv*) ; 
 struct radeon_fpriv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct radeon_bo_va* FUNC2 (struct radeon_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct radeon_device*,struct radeon_bo_va*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct drm_device *dev, struct drm_file *file_priv)
{
	struct radeon_device *rdev = dev->dev_private;

	file_priv->driver_priv = NULL;

	/* new gpu have virtual address space support */
	if (rdev->family >= CHIP_CAYMAN) {
		struct radeon_fpriv *fpriv;
		struct radeon_bo_va *bo_va;
		int r;

		fpriv = FUNC1(sizeof(*fpriv), GFP_KERNEL);
		if (FUNC6(!fpriv)) {
			return -ENOMEM;
		}

		FUNC5(rdev, &fpriv->vm);

		/* map the ib pool buffer read only into
		 * virtual address space */
		bo_va = FUNC2(rdev, &fpriv->vm,
					 rdev->ring_tmp_bo.bo);
		r = FUNC3(rdev, bo_va, RADEON_VA_IB_OFFSET,
					  RADEON_VM_PAGE_READABLE |
					  RADEON_VM_PAGE_SNOOPED);
		if (r) {
			FUNC4(rdev, &fpriv->vm);
			FUNC0(fpriv);
			return r;
		}

		file_priv->driver_priv = fpriv;
	}
	return 0;
}
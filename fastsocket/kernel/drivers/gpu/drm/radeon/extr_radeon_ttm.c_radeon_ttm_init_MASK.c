#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  dev_mapping; } ;
struct TYPE_8__ {int /*<<< orphan*/  object; } ;
struct TYPE_9__ {TYPE_1__ ref; } ;
struct TYPE_11__ {int initialized; TYPE_6__ bdev; TYPE_2__ bo_global_ref; } ;
struct TYPE_10__ {int real_vram_size; int gtt_size; } ;
struct radeon_device {TYPE_5__* ddev; TYPE_4__ mman; TYPE_3__ mc; int /*<<< orphan*/  stollen_vga_memory; int /*<<< orphan*/  need_dma32; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_VRAM ; 
 int /*<<< orphan*/  TTM_PL_TT ; 
 int /*<<< orphan*/  TTM_PL_VRAM ; 
 int FUNC2 (struct radeon_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  radeon_bo_driver ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct radeon_device*) ; 
 int FUNC8 (struct radeon_device*) ; 
 int FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 

int FUNC11(struct radeon_device *rdev)
{
	int r;

	r = FUNC8(rdev);
	if (r) {
		return r;
	}
	/* No others user of address space so set it to 0 */
	r = FUNC9(&rdev->mman.bdev,
			       rdev->mman.bo_global_ref.ref.object,
			       &radeon_bo_driver, DRM_FILE_PAGE_OFFSET,
			       rdev->need_dma32);
	if (r) {
		FUNC0("failed initializing buffer object driver(%d).\n", r);
		return r;
	}
	rdev->mman.initialized = true;
	r = FUNC10(&rdev->mman.bdev, TTM_PL_VRAM,
				rdev->mc.real_vram_size >> PAGE_SHIFT);
	if (r) {
		FUNC0("Failed initializing VRAM heap.\n");
		return r;
	}
	r = FUNC2(rdev, 256 * 1024, PAGE_SIZE, true,
			     RADEON_GEM_DOMAIN_VRAM,
			     NULL, &rdev->stollen_vga_memory);
	if (r) {
		return r;
	}
	r = FUNC4(rdev->stollen_vga_memory, false);
	if (r)
		return r;
	r = FUNC3(rdev->stollen_vga_memory, RADEON_GEM_DOMAIN_VRAM, NULL);
	FUNC6(rdev->stollen_vga_memory);
	if (r) {
		FUNC5(&rdev->stollen_vga_memory);
		return r;
	}
	FUNC1("radeon: %uM of VRAM memory ready\n",
		 (unsigned) (rdev->mc.real_vram_size / (1024 * 1024)));
	r = FUNC10(&rdev->mman.bdev, TTM_PL_TT,
				rdev->mc.gtt_size >> PAGE_SHIFT);
	if (r) {
		FUNC0("Failed initializing GTT heap.\n");
		return r;
	}
	FUNC1("radeon: %uM of GTT memory ready.\n",
		 (unsigned)(rdev->mc.gtt_size / (1024 * 1024)));
	rdev->mman.bdev.dev_mapping = rdev->ddev->dev_mapping;

	r = FUNC7(rdev);
	if (r) {
		FUNC0("Failed to init debugfs\n");
		return r;
	}
	return 0;
}
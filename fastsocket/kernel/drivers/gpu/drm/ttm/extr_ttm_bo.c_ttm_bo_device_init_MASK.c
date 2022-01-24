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
typedef  int /*<<< orphan*/  uint64_t ;
struct ttm_bo_global {int /*<<< orphan*/  device_list_mutex; int /*<<< orphan*/  device_list; } ;
struct ttm_bo_driver {int dummy; } ;
struct ttm_bo_device {int need_dma32; int /*<<< orphan*/  device_list; int /*<<< orphan*/  fence_lock; scalar_t__ val_seq; struct ttm_bo_global* glob; int /*<<< orphan*/ * dev_mapping; int /*<<< orphan*/  ddestroy; int /*<<< orphan*/  wq; int /*<<< orphan*/  addr_space_mm; int /*<<< orphan*/  addr_space_rb; int /*<<< orphan*/  man; struct ttm_bo_driver* driver; int /*<<< orphan*/  vm_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  TTM_PL_SYSTEM ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ttm_bo_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ttm_bo_delayed_workqueue ; 
 int FUNC10 (struct ttm_bo_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct ttm_bo_device *bdev,
		       struct ttm_bo_global *glob,
		       struct ttm_bo_driver *driver,
		       uint64_t file_page_offset,
		       bool need_dma32)
{
	int ret = -EINVAL;

	FUNC7(&bdev->vm_lock);
	bdev->driver = driver;

	FUNC4(bdev->man, 0, sizeof(bdev->man));

	/*
	 * Initialize the system memory buffer type.
	 * Other types need to be driver / IOCTL initialized.
	 */
	ret = FUNC10(bdev, TTM_PL_SYSTEM, 0);
	if (FUNC11(ret != 0))
		goto out_no_sys;

	bdev->addr_space_rb = RB_ROOT;
	ret = FUNC2(&bdev->addr_space_mm, file_page_offset, 0x10000000);
	if (FUNC11(ret != 0))
		goto out_no_addr_mm;

	FUNC0(&bdev->wq, ttm_bo_delayed_workqueue);
	FUNC1(&bdev->ddestroy);
	bdev->dev_mapping = NULL;
	bdev->glob = glob;
	bdev->need_dma32 = need_dma32;
	bdev->val_seq = 0;
	FUNC8(&bdev->fence_lock);
	FUNC5(&glob->device_list_mutex);
	FUNC3(&bdev->device_list, &glob->device_list);
	FUNC6(&glob->device_list_mutex);

	return 0;
out_no_addr_mm:
	FUNC9(bdev, 0);
out_no_sys:
	return ret;
}
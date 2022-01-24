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
typedef  int /*<<< orphan*/  uint32_t ;
struct ttm_placement {int dummy; } ;
struct ttm_buffer_object {int dummy; } ;
struct ttm_bo_device {int dummy; } ;
struct file {int dummy; } ;
typedef  enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ttm_buffer_object* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 size_t FUNC2 (struct ttm_bo_device*,unsigned long,int) ; 
 int FUNC3 (struct ttm_bo_device*,struct ttm_buffer_object*,unsigned long,int,struct ttm_placement*,int /*<<< orphan*/ ,int,struct file*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct ttm_bo_device *bdev,
			unsigned long size,
			enum ttm_bo_type type,
			struct ttm_placement *placement,
			uint32_t page_alignment,
			bool interruptible,
			struct file *persistent_swap_storage,
			struct ttm_buffer_object **p_bo)
{
	struct ttm_buffer_object *bo;
	size_t acc_size;
	int ret;

	bo = FUNC0(sizeof(*bo), GFP_KERNEL);
	if (FUNC4(bo == NULL))
		return -ENOMEM;

	acc_size = FUNC2(bdev, size, sizeof(struct ttm_buffer_object));
	ret = FUNC3(bdev, bo, size, type, placement, page_alignment,
			  interruptible, persistent_swap_storage, acc_size,
			  NULL, NULL);
	if (FUNC1(ret == 0))
		*p_bo = bo;

	return ret;
}
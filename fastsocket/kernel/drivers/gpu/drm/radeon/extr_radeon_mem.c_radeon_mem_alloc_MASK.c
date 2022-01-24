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
struct mem_block {int /*<<< orphan*/  start; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_2__ {int alignment; int /*<<< orphan*/  region_offset; int /*<<< orphan*/  size; int /*<<< orphan*/  region; } ;
typedef  TYPE_1__ drm_radeon_mem_alloc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct mem_block* FUNC2 (struct mem_block*,int /*<<< orphan*/ ,int,struct drm_file*) ; 
 struct mem_block** FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	drm_radeon_mem_alloc_t *alloc = data;
	struct mem_block *block, **heap;

	if (!dev_priv) {
		FUNC1("called with no initialization\n");
		return -EINVAL;
	}

	heap = FUNC3(dev_priv, alloc->region);
	if (!heap || !*heap)
		return -EFAULT;

	/* Make things easier on ourselves: all allocations at least
	 * 4k aligned.
	 */
	if (alloc->alignment < 12)
		alloc->alignment = 12;

	block = FUNC2(*heap, alloc->size, alloc->alignment, file_priv);

	if (!block)
		return -ENOMEM;

	if (FUNC0(alloc->region_offset, &block->start,
			     sizeof(int))) {
		FUNC1("copy_to_user\n");
		return -EFAULT;
	}

	return 0;
}
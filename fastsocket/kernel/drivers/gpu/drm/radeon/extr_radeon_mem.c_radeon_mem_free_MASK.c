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
struct mem_block {struct drm_file* file_priv; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_2__ {int /*<<< orphan*/  region_offset; int /*<<< orphan*/  region; } ;
typedef  TYPE_1__ drm_radeon_mem_free_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int EPERM ; 
 struct mem_block* FUNC1 (struct mem_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mem_block*) ; 
 struct mem_block** FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	drm_radeon_mem_free_t *memfree = data;
	struct mem_block *block, **heap;

	if (!dev_priv) {
		FUNC0("called with no initialization\n");
		return -EINVAL;
	}

	heap = FUNC3(dev_priv, memfree->region);
	if (!heap || !*heap)
		return -EFAULT;

	block = FUNC1(*heap, memfree->region_offset);
	if (!block)
		return -EFAULT;

	if (block->file_priv != file_priv)
		return -EPERM;

	FUNC2(block);
	return 0;
}
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
struct mem_block {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/ * dev_private; } ;
typedef  int /*<<< orphan*/  drm_radeon_private_t ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  start; int /*<<< orphan*/  region; } ;
typedef  TYPE_1__ drm_radeon_mem_init_heap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 struct mem_block** FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mem_block**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_radeon_private_t *dev_priv = dev->dev_private;
	drm_radeon_mem_init_heap_t *initheap = data;
	struct mem_block **heap;

	if (!dev_priv) {
		FUNC0("called with no initialization\n");
		return -EINVAL;
	}

	heap = FUNC1(dev_priv, initheap->region);
	if (!heap)
		return -EFAULT;

	if (*heap) {
		FUNC0("heap already initialized?");
		return -EFAULT;
	}

	return FUNC2(heap, initheap->start, initheap->size);
}
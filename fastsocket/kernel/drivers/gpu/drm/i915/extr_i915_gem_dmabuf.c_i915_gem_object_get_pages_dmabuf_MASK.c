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
struct sg_table {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  import_attach; } ;
struct drm_i915_gem_object {int has_dma_mapping; struct sg_table* pages; TYPE_1__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 scalar_t__ FUNC0 (struct sg_table*) ; 
 int FUNC1 (struct sg_table*) ; 
 struct sg_table* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_i915_gem_object *obj)
{
	struct sg_table *sg;

	sg = FUNC2(obj->base.import_attach, DMA_BIDIRECTIONAL);
	if (FUNC0(sg))
		return FUNC1(sg);

	obj->pages = sg;
	obj->has_dma_mapping = true;
	return 0;
}
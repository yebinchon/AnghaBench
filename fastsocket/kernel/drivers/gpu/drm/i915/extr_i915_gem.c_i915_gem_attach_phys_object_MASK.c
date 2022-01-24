#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_8__ {int size; int /*<<< orphan*/  filp; } ;
struct drm_i915_gem_object {TYPE_4__* phys_obj; TYPE_2__ base; } ;
struct drm_device {TYPE_5__* dev_private; } ;
struct address_space {int dummy; } ;
struct TYPE_7__ {TYPE_4__** phys_objs; } ;
struct TYPE_11__ {TYPE_1__ mm; } ;
typedef  TYPE_5__ drm_i915_private_t ;
struct TYPE_12__ {struct address_space* i_mapping; } ;
struct TYPE_10__ {int id; TYPE_3__* handle; struct drm_i915_gem_object* cur_obj; } ;
struct TYPE_9__ {char* vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EINVAL ; 
 int I915_MAX_PHYS_OBJECT ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct page*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_i915_gem_object*) ; 
 int FUNC5 (struct drm_device*,int,int,int) ; 
 char* FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 struct page* FUNC11 (struct address_space*,int) ; 

int
FUNC12(struct drm_device *dev,
			    struct drm_i915_gem_object *obj,
			    int id,
			    int align)
{
	struct address_space *mapping = FUNC3(obj->base.filp)->i_mapping;
	drm_i915_private_t *dev_priv = dev->dev_private;
	int ret = 0;
	int page_count;
	int i;

	if (id > I915_MAX_PHYS_OBJECT)
		return -EINVAL;

	if (obj->phys_obj) {
		if (obj->phys_obj->id == id)
			return 0;
		FUNC4(dev, obj);
	}

	/* create a new object */
	if (!dev_priv->mm.phys_objs[id - 1]) {
		ret = FUNC5(dev, id,
						obj->base.size, align);
		if (ret) {
			FUNC0("failed to init phys object %d size: %zu\n",
				  id, obj->base.size);
			return ret;
		}
	}

	/* bind to the object */
	obj->phys_obj = dev_priv->mm.phys_objs[id - 1];
	obj->phys_obj->cur_obj = obj;

	page_count = obj->base.size / PAGE_SIZE;

	for (i = 0; i < page_count; i++) {
		struct page *page;
		char *dst, *src;

		page = FUNC11(mapping, i);
		if (FUNC1(page))
			return FUNC2(page);

		src = FUNC6(page, KM_USER0);
		dst = obj->phys_obj->handle->vaddr + (i * PAGE_SIZE);
		FUNC9(dst, src, PAGE_SIZE);
		FUNC7(src, KM_USER0);

		FUNC8(page);
		FUNC10(page);
	}

	return 0;
}
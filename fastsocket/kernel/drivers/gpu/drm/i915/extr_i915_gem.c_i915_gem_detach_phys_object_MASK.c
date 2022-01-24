#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  filp; } ;
struct drm_i915_gem_object {TYPE_3__* phys_obj; TYPE_2__ base; } ;
struct drm_device {int dummy; } ;
struct address_space {int dummy; } ;
struct TYPE_8__ {struct address_space* i_mapping; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cur_obj; TYPE_1__* handle; } ;
struct TYPE_5__ {char* vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct page**,int) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 char* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 struct page* FUNC10 (struct address_space*,int) ; 

void FUNC11(struct drm_device *dev,
				 struct drm_i915_gem_object *obj)
{
	struct address_space *mapping = FUNC2(obj->base.filp)->i_mapping;
	char *vaddr;
	int i;
	int page_count;

	if (!obj->phys_obj)
		return;
	vaddr = obj->phys_obj->handle->vaddr;

	page_count = obj->base.size / PAGE_SIZE;
	for (i = 0; i < page_count; i++) {
		struct page *page = FUNC10(mapping, i);
		if (!FUNC0(page)) {
			char *dst = FUNC4(page, KM_USER0);
			FUNC7(dst, vaddr + i*PAGE_SIZE, PAGE_SIZE);
			FUNC5(dst, KM_USER0);

			FUNC1(&page, 1);

			FUNC9(page);
			FUNC6(page);
			FUNC8(page);
		}
	}
	FUNC3(dev);

	obj->phys_obj->cur_obj = NULL;
	obj->phys_obj = NULL;
}
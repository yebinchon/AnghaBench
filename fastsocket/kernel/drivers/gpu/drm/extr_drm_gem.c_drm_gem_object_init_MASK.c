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
struct drm_gem_object {size_t size; int /*<<< orphan*/  handle_count; int /*<<< orphan*/  refcount; int /*<<< orphan*/  filp; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_NORESERVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_device *dev,
			struct drm_gem_object *obj, size_t size)
{
	FUNC0((size & (PAGE_SIZE - 1)) != 0);

	obj->dev = dev;
	obj->filp = FUNC5("drm mm object", size, VM_NORESERVE);
	if (FUNC1(obj->filp))
		return FUNC2(obj->filp);

	FUNC4(&obj->refcount);
	FUNC3(&obj->handle_count, 0);
	obj->size = size;

	return 0;
}
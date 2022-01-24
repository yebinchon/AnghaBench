#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct drm_i915_gem_mmap {scalar_t__ addr_ptr; int /*<<< orphan*/  offset; int /*<<< orphan*/  size; int /*<<< orphan*/  handle; } ;
struct drm_gem_object {int /*<<< orphan*/  filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmap_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 TYPE_2__* current ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct drm_gem_object* FUNC3 (struct drm_device*,struct drm_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_gem_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct drm_device *dev, void *data,
		    struct drm_file *file)
{
	struct drm_i915_gem_mmap *args = data;
	struct drm_gem_object *obj;
	unsigned long addr;

	obj = FUNC3(dev, file, args->handle);
	if (obj == NULL)
		return -ENOENT;

	/* prime objects have no backing filp to GEM mmap
	 * pages from.
	 */
	if (!obj->filp) {
		FUNC4(obj);
		return -EINVAL;
	}

	FUNC2(&current->mm->mmap_sem);
	addr = FUNC1(obj->filp, 0, args->size,
		       PROT_READ | PROT_WRITE, MAP_SHARED,
		       args->offset);
	FUNC5(&current->mm->mmap_sem);
	FUNC4(obj);
	if (FUNC0((void *)addr))
		return addr;

	args->addr_ptr = (uint64_t) addr;

	return 0;
}
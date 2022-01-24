#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_file {int dummy; } ;
struct drm_device {int /*<<< orphan*/  dev_private; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct drm_file*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct drm_i915_gem_object* FUNC3 (struct drm_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_gem_object*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_gem_object*) ; 

__attribute__((used)) static int
FUNC8(struct drm_file *file,
		struct drm_device *dev,
		uint64_t size,
		uint32_t *handle_p)
{
	struct drm_i915_gem_object *obj;
	int ret;
	u32 handle;

	size = FUNC6(size, PAGE_SIZE);
	if (size == 0)
		return -EINVAL;

	/* Allocate the new object */
	obj = FUNC3(dev, size);
	if (obj == NULL)
		return -ENOMEM;

	ret = FUNC0(file, &obj->base, &handle);
	if (ret) {
		FUNC1(&obj->base);
		FUNC4(dev->dev_private, obj->base.size);
		FUNC5(obj);
		return ret;
	}

	/* drop reference from allocate - handle holds it now */
	FUNC2(&obj->base);
	FUNC7(obj);

	*handle_p = handle;
	return 0;
}
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
struct drm_device {int /*<<< orphan*/  struct_mutex; int /*<<< orphan*/  ctx_idr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_RESERVED_CONTEXTS ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct drm_device * dev)
{
	int new_id;
	int ret;

again:
	if (FUNC2(&dev->ctx_idr, GFP_KERNEL) == 0) {
		FUNC0("Out of memory expanding drawable idr\n");
		return -ENOMEM;
	}
	FUNC3(&dev->struct_mutex);
	ret = FUNC1(&dev->ctx_idr, NULL,
				DRM_RESERVED_CONTEXTS, &new_id);
	FUNC4(&dev->struct_mutex);
	if (ret == -EAGAIN)
		goto again;
	else if (ret)
		return ret;

	return new_id;
}
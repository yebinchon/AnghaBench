#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {int dummy; } ;
struct drm_clip_rect {int dummy; } ;
struct TYPE_3__ {int num_cliprects; int sz; int /*<<< orphan*/  DR4; int /*<<< orphan*/  DR1; } ;
typedef  TYPE_1__ drm_i915_cmdbuffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int FUNC1 (struct drm_device*,struct drm_clip_rect*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 

__attribute__((used)) static int FUNC5(struct drm_device * dev,
				   drm_i915_cmdbuffer_t *cmd,
				   struct drm_clip_rect *cliprects,
				   void *cmdbuf)
{
	int nbox = cmd->num_cliprects;
	int i = 0, count, ret;

	if (cmd->sz & 0x3) {
		FUNC0("alignment");
		return -EINVAL;
	}

	FUNC4(dev);

	count = nbox ? nbox : 1;

	for (i = 0; i < count; i++) {
		if (i < nbox) {
			ret = FUNC1(dev, &cliprects[i],
					    cmd->DR1, cmd->DR4);
			if (ret)
				return ret;
		}

		ret = FUNC3(dev, cmdbuf, cmd->sz / 4);
		if (ret)
			return ret;
	}

	FUNC2(dev);
	return 0;
}
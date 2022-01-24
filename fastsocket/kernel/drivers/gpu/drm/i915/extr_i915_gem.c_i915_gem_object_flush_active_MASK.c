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
struct drm_i915_gem_object {int /*<<< orphan*/  ring; int /*<<< orphan*/  last_read_seqno; scalar_t__ active; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct drm_i915_gem_object *obj)
{
	int ret;

	if (obj->active) {
		ret = FUNC0(obj->ring, obj->last_read_seqno);
		if (ret)
			return ret;

		FUNC1(obj->ring);
	}

	return 0;
}
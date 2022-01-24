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
struct list_head {int dummy; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  gtt_space; int /*<<< orphan*/  exec_list; scalar_t__ pin_count; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static bool
FUNC2(struct drm_i915_gem_object *obj, struct list_head *unwind)
{
	if (obj->pin_count)
		return false;

	FUNC1(&obj->exec_list, unwind);
	return FUNC0(obj->gtt_space);
}
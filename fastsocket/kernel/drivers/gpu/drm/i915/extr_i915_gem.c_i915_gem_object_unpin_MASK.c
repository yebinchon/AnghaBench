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
struct drm_i915_gem_object {scalar_t__ pin_count; int pin_mappable; int /*<<< orphan*/ * gtt_space; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1(struct drm_i915_gem_object *obj)
{
	FUNC0(obj->pin_count == 0);
	FUNC0(obj->gtt_space == NULL);

	if (--obj->pin_count == 0)
		obj->pin_mappable = false;
}
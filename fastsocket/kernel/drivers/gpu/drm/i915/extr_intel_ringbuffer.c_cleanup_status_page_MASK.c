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
struct TYPE_4__ {struct drm_i915_gem_object* obj; } ;
struct intel_ring_buffer {TYPE_2__ status_page; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; TYPE_1__* pages; } ;
struct TYPE_3__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct intel_ring_buffer *ring)
{
	struct drm_i915_gem_object *obj;

	obj = ring->status_page.obj;
	if (obj == NULL)
		return;

	FUNC2(FUNC3(obj->pages->sgl));
	FUNC1(obj);
	FUNC0(&obj->base);
	ring->status_page.obj = NULL;
}
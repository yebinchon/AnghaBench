#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pipe_control {struct drm_i915_gem_object* obj; } ;
struct intel_ring_buffer {struct pipe_control* private; } ;
struct drm_i915_gem_object {int /*<<< orphan*/  base; TYPE_1__* pages; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_i915_gem_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_control*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct intel_ring_buffer *ring)
{
	struct pipe_control *pc = ring->private;
	struct drm_i915_gem_object *obj;

	if (!ring->private)
		return;

	obj = pc->obj;

	FUNC3(FUNC4(obj->pages->sgl));
	FUNC1(obj);
	FUNC0(&obj->base);

	FUNC2(pc);
	ring->private = NULL;
}
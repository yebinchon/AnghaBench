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
typedef  scalar_t__ u32 ;
struct intel_ring_buffer {scalar_t__* sync_seqno; int (* sync_to ) (struct intel_ring_buffer*,struct intel_ring_buffer*,scalar_t__) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct drm_i915_gem_object {scalar_t__ last_read_seqno; struct intel_ring_buffer* ring; TYPE_1__ base; } ;

/* Variables and functions */
 int FUNC0 (struct intel_ring_buffer*,scalar_t__) ; 
 int FUNC1 (struct drm_i915_gem_object*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct intel_ring_buffer*,struct intel_ring_buffer*) ; 
 int FUNC4 (struct intel_ring_buffer*,struct intel_ring_buffer*,scalar_t__) ; 

int
FUNC5(struct drm_i915_gem_object *obj,
		     struct intel_ring_buffer *to)
{
	struct intel_ring_buffer *from = obj->ring;
	u32 seqno;
	int ret, idx;

	if (from == NULL || to == from)
		return 0;

	if (to == NULL || !FUNC2(obj->base.dev))
		return FUNC1(obj, false);

	idx = FUNC3(from, to);

	seqno = obj->last_read_seqno;
	if (seqno <= from->sync_seqno[idx])
		return 0;

	ret = FUNC0(obj->ring, seqno);
	if (ret)
		return ret;

	ret = to->sync_to(to, from, seqno);
	if (!ret)
		/* We use last_read_seqno because sync_to()
		 * might have just caused seqno wrap under
		 * the radar.
		 */
		from->sync_seqno[idx] = obj->last_read_seqno;

	return ret;
}
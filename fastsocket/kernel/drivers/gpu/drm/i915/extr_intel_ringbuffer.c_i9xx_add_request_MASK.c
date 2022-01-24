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
struct intel_ring_buffer {int outstanding_lazy_request; } ;

/* Variables and functions */
 int I915_GEM_HWS_INDEX ; 
 int MI_STORE_DWORD_INDEX ; 
 int MI_STORE_DWORD_INDEX_SHIFT ; 
 int MI_USER_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (struct intel_ring_buffer*) ; 
 int FUNC1 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*,int) ; 

__attribute__((used)) static int
FUNC3(struct intel_ring_buffer *ring)
{
	int ret;

	ret = FUNC1(ring, 4);
	if (ret)
		return ret;

	FUNC2(ring, MI_STORE_DWORD_INDEX);
	FUNC2(ring, I915_GEM_HWS_INDEX << MI_STORE_DWORD_INDEX_SHIFT);
	FUNC2(ring, ring->outstanding_lazy_request);
	FUNC2(ring, MI_USER_INTERRUPT);
	FUNC0(ring);

	return 0;
}
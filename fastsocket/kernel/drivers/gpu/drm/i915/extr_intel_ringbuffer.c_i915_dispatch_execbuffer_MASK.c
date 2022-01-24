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
typedef  int u32 ;
struct intel_ring_buffer {int dummy; } ;

/* Variables and functions */
 unsigned int I915_DISPATCH_SECURE ; 
 int MI_BATCH_BUFFER_START ; 
 int MI_BATCH_GTT ; 
 int MI_BATCH_NON_SECURE ; 
 int /*<<< orphan*/  FUNC0 (struct intel_ring_buffer*) ; 
 int FUNC1 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*,int) ; 

__attribute__((used)) static int
FUNC3(struct intel_ring_buffer *ring,
			 u32 offset, u32 len,
			 unsigned flags)
{
	int ret;

	ret = FUNC1(ring, 2);
	if (ret)
		return ret;

	FUNC2(ring, MI_BATCH_BUFFER_START | MI_BATCH_GTT);
	FUNC2(ring, offset | (flags & I915_DISPATCH_SECURE ? 0 : MI_BATCH_NON_SECURE));
	FUNC0(ring);

	return 0;
}
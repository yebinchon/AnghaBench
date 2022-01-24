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
typedef  int /*<<< orphan*/  u32 ;
struct intel_ring_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_GEM_HWS_INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*) ; 

__attribute__((used)) static u32
FUNC2(struct intel_ring_buffer *ring, bool lazy_coherency)
{
	/* Workaround to force correct ordering between irq and seqno writes on
	 * ivb (and maybe also on snb) by reading from a CS register (like
	 * ACTHD) before reading the status page. */
	if (!lazy_coherency)
		FUNC1(ring);
	return FUNC0(ring, I915_GEM_HWS_INDEX);
}
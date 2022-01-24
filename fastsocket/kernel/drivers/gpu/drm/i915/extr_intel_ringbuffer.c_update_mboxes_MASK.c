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
struct intel_ring_buffer {int /*<<< orphan*/  outstanding_lazy_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct intel_ring_buffer *ring,
	      u32 mmio_offset)
{
	FUNC1(ring, FUNC0(1));
	FUNC1(ring, mmio_offset);
	FUNC1(ring, ring->outstanding_lazy_request);
}
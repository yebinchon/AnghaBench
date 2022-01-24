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
struct intel_ring_buffer {scalar_t__ tail; scalar_t__ effective_size; int space; } ;

/* Variables and functions */
 int FUNC0 (struct intel_ring_buffer*) ; 
 int FUNC1 (struct intel_ring_buffer*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct intel_ring_buffer *ring,
			      int bytes)
{
	int ret;

	if (FUNC2(ring->tail + bytes > ring->effective_size)) {
		ret = FUNC0(ring);
		if (FUNC2(ret))
			return ret;
	}

	if (FUNC2(ring->space < bytes)) {
		ret = FUNC1(ring, bytes);
		if (FUNC2(ret))
			return ret;
	}

	ring->space -= bytes;
	return 0;
}
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
 int /*<<< orphan*/  MI_FLUSH ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int /*<<< orphan*/  FUNC0 (struct intel_ring_buffer*) ; 
 int FUNC1 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct intel_ring_buffer *ring,
	       u32     invalidate_domains,
	       u32     flush_domains)
{
	int ret;

	ret = FUNC1(ring, 2);
	if (ret)
		return ret;

	FUNC2(ring, MI_FLUSH);
	FUNC2(ring, MI_NOOP);
	FUNC0(ring);
	return 0;
}
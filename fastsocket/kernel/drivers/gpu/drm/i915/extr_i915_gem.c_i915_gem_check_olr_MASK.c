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
struct intel_ring_buffer {scalar_t__ outstanding_lazy_request; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  struct_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct intel_ring_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct intel_ring_buffer *ring, u32 seqno)
{
	int ret;

	FUNC0(!FUNC2(&ring->dev->struct_mutex));

	ret = 0;
	if (seqno == ring->outstanding_lazy_request)
		ret = FUNC1(ring, NULL, NULL);

	return ret;
}
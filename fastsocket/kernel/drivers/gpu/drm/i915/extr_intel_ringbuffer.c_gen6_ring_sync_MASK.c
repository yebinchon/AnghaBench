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
struct intel_ring_buffer {int* semaphore_register; size_t id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MI_NOOP ; 
 int MI_SEMAPHORE_COMPARE ; 
 int MI_SEMAPHORE_MBOX ; 
 int MI_SEMAPHORE_REGISTER ; 
 int MI_SEMAPHORE_SYNC_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_ring_buffer*) ; 
 int FUNC3 (struct intel_ring_buffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_ring_buffer*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct intel_ring_buffer *waiter,
	       struct intel_ring_buffer *signaller,
	       u32 seqno)
{
	int ret;
	u32 dw1 = MI_SEMAPHORE_MBOX |
		  MI_SEMAPHORE_COMPARE |
		  MI_SEMAPHORE_REGISTER;

	/* Throughout all of the GEM code, seqno passed implies our current
	 * seqno is >= the last seqno executed. However for hardware the
	 * comparison is strictly greater than.
	 */
	seqno -= 1;

	FUNC0(signaller->semaphore_register[waiter->id] ==
		MI_SEMAPHORE_SYNC_INVALID);

	ret = FUNC3(waiter, 4);
	if (ret)
		return ret;

	/* If seqno wrap happened, omit the wait with no-ops */
	if (FUNC5(!FUNC1(waiter->dev, seqno))) {
		FUNC4(waiter,
				dw1 |
				signaller->semaphore_register[waiter->id]);
		FUNC4(waiter, seqno);
		FUNC4(waiter, 0);
		FUNC4(waiter, MI_NOOP);
	} else {
		FUNC4(waiter, MI_NOOP);
		FUNC4(waiter, MI_NOOP);
		FUNC4(waiter, MI_NOOP);
		FUNC4(waiter, MI_NOOP);
	}
	FUNC2(waiter);

	return 0;
}
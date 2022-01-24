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
struct qdio_q {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC1 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC4 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tasklet_inbound ; 
 int /*<<< orphan*/  tasklet_inbound_resched ; 
 int /*<<< orphan*/  tasklet_inbound_resched2 ; 

__attribute__((used)) static void FUNC5(struct qdio_q *q)
{
	FUNC4(q, tasklet_inbound);
again:
	if (!FUNC1(q))
		return;

	FUNC2(q);

	if (!FUNC0(q)) {
		/* means poll time is not yet over */
		FUNC4(q, tasklet_inbound_resched);
		goto again;
	}

	FUNC3(q);
	/*
	 * We need to check again to not lose initiative after
	 * resetting the ACK state.
	 */
	if (!FUNC0(q)) {
		FUNC4(q, tasklet_inbound_resched2);
		goto again;
	}
}
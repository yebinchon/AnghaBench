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
struct xpc_gru_mq_uv {unsigned long order; scalar_t__ address; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xpc_gru_mq_uv*) ; 
 int xpSuccess ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct xpc_gru_mq_uv*) ; 
 int /*<<< orphan*/  FUNC7 (struct xpc_gru_mq_uv*) ; 

__attribute__((used)) static void
FUNC8(struct xpc_gru_mq_uv *mq)
{
	unsigned int mq_size;
	int pg_order;
	int ret;

	/* disallow other partitions to access GRU mq */
	mq_size = 1UL << mq->order;
	ret = FUNC5(FUNC4(mq->address), mq_size);
	FUNC0(ret != xpSuccess);

	/* unregister irq handler and release mq irq/vector mapping */
	FUNC1(mq->irq, NULL);
	FUNC7(mq);

	/* disable generation of irq when GRU mq op occurs to this mq */
	FUNC6(mq);

	pg_order = mq->order - PAGE_SHIFT;
	FUNC2((unsigned long)mq->address, pg_order);

	FUNC3(mq);
}
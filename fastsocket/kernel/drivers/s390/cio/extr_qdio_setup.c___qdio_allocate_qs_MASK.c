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
struct slib {int dummy; } ;
struct qdio_q {struct slib* slib; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct qdio_q* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct qdio_q*) ; 
 int /*<<< orphan*/  qdio_q_cache ; 

__attribute__((used)) static int FUNC4(struct qdio_q **irq_ptr_qs, int nr_queues)
{
	struct qdio_q *q;
	int i;

	for (i = 0; i < nr_queues; i++) {
		q = FUNC2(qdio_q_cache, GFP_KERNEL);
		if (!q)
			return -ENOMEM;
		FUNC0((unsigned long)q & 0xff);

		q->slib = (struct slib *) FUNC1(GFP_KERNEL);
		if (!q->slib) {
			FUNC3(qdio_q_cache, q);
			return -ENOMEM;
		}
		FUNC0((unsigned long)q->slib & 0x7ff);
		irq_ptr_qs[i] = q;
	}
	return 0;
}
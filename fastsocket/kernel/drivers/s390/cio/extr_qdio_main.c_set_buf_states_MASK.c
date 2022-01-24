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
struct TYPE_2__ {int /*<<< orphan*/ * val; } ;
struct qdio_q {TYPE_1__ slsb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int QDIO_MAX_BUFFERS_MASK ; 
 int QDIO_MAX_BUFFERS_PER_Q ; 
 scalar_t__ FUNC1 (struct qdio_q*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct qdio_q*,unsigned char,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char) ; 

__attribute__((used)) static inline int FUNC5(struct qdio_q *q, int bufnr,
				 unsigned char state, int count)
{
	int i;

	FUNC0(bufnr > QDIO_MAX_BUFFERS_MASK);
	FUNC0(count > QDIO_MAX_BUFFERS_PER_Q);

	if (FUNC1(q))
		return FUNC3(q, state, bufnr, count);

	for (i = 0; i < count; i++) {
		FUNC4(&q->slsb.val[bufnr], state);
		bufnr = FUNC2(bufnr);
	}
	return count;
}
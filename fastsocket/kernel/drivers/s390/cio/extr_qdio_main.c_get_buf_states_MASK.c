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
struct TYPE_2__ {unsigned char* val; } ;
struct qdio_q {TYPE_1__ slsb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int QDIO_MAX_BUFFERS_MASK ; 
 unsigned int QDIO_MAX_BUFFERS_PER_Q ; 
 unsigned char SLSB_P_OUTPUT_EMPTY ; 
 unsigned char SLSB_P_OUTPUT_PENDING ; 
 scalar_t__ FUNC1 (struct qdio_q*) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int FUNC3 (struct qdio_q*,unsigned char*,unsigned int,unsigned int,int) ; 

__attribute__((used)) static inline int FUNC4(struct qdio_q *q, unsigned int bufnr,
				 unsigned char *state, unsigned int count,
				 int auto_ack, int merge_pending)
{
	unsigned char __state = 0;
	int i;

	FUNC0(bufnr > QDIO_MAX_BUFFERS_MASK);
	FUNC0(count > QDIO_MAX_BUFFERS_PER_Q);

	if (FUNC1(q))
		return FUNC3(q, state, bufnr, count, auto_ack);

	for (i = 0; i < count; i++) {
		if (!__state) {
			__state = q->slsb.val[bufnr];
			if (merge_pending && __state == SLSB_P_OUTPUT_PENDING)
				__state = SLSB_P_OUTPUT_EMPTY;
		} else if (merge_pending) {
			if ((q->slsb.val[bufnr] & __state) != __state)
				break;
		} else if (q->slsb.val[bufnr] != __state)
			break;
		bufnr = FUNC2(bufnr);
	}
	*state = __state;
	return i;
}
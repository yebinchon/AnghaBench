#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* sbal_state; struct qaob** aobs; } ;
struct TYPE_6__ {TYPE_2__ out; } ;
struct qdio_q {TYPE_3__ u; } ;
struct qaob {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * aob; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QDIO_OUTBUF_STATE_FLAG_PENDING ; 
 unsigned char SLSB_P_OUTPUT_EMPTY ; 
 unsigned char SLSB_P_OUTPUT_PENDING ; 
 scalar_t__ FUNC1 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static inline void FUNC4(struct qdio_q *q, int start, int count)
{
	if (FUNC1(q)) {
		int j;
		int b = start;
		unsigned char state = 0;

		for (j = 0; j < count; ++j) {
			FUNC2(q, b, &state, 0);
			if (state == SLSB_P_OUTPUT_PENDING) {
				struct qaob *aob = q->u.out.aobs[b];
				if (aob == NULL)
					continue;

				FUNC0(q->u.out.sbal_state == NULL);
				q->u.out.sbal_state[b].flags |=
					QDIO_OUTBUF_STATE_FLAG_PENDING;
				q->u.out.aobs[b] = NULL;
			} else if (state == SLSB_P_OUTPUT_EMPTY) {
				FUNC0(q->u.out.sbal_state == NULL);
				q->u.out.sbal_state[b].aob = NULL;
			}

			b = FUNC3(b);
		}
	}
}
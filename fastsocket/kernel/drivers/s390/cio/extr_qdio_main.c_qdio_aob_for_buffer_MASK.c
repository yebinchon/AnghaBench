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
typedef  scalar_t__ u64 ;
struct qdio_output_q {struct qaob** aobs; TYPE_1__* sbal_state; int /*<<< orphan*/  use_cq; } ;
struct qaob {scalar_t__ user1; } ;
struct TYPE_2__ {scalar_t__ user; struct qaob* aob; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  QDIO_OUTBUF_STATE_FLAG_NONE ; 
 struct qaob* FUNC1 () ; 
 unsigned long FUNC2 (struct qaob*) ; 

__attribute__((used)) static inline unsigned long FUNC3(struct qdio_output_q *q,
					int bufnr)
{
	unsigned long phys_aob = 0;

	if (!q->use_cq)
		goto out;

	if (!q->aobs[bufnr]) {
		struct qaob *aob = FUNC1();
		q->aobs[bufnr] = aob;
	}
	if (q->aobs[bufnr]) {
		FUNC0(q->sbal_state == NULL);
		q->sbal_state[bufnr].flags = QDIO_OUTBUF_STATE_FLAG_NONE;
		q->sbal_state[bufnr].aob = q->aobs[bufnr];
		q->aobs[bufnr]->user1 = (u64) q->sbal_state[bufnr].user;
		phys_aob = FUNC2(q->aobs[bufnr]);
		FUNC0(phys_aob & 0xFF);
	}

out:
	return phys_aob;
}
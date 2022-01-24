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
struct t3_cqe {int dummy; } ;
struct t3_cq {int /*<<< orphan*/  size_log2; int /*<<< orphan*/  rptr; struct t3_cqe* queue; int /*<<< orphan*/  sw_rptr; struct t3_cqe* sw_queue; int /*<<< orphan*/  sw_wptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct t3_cqe*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct t3_cqe *FUNC3(struct t3_cq *cq)
{
	struct t3_cqe *cqe;

	if (!FUNC1(cq->sw_rptr, cq->sw_wptr)) {
		cqe = cq->sw_queue + (FUNC2(cq->sw_rptr, cq->size_log2));
		return cqe;
	}
	cqe = cq->queue + (FUNC2(cq->rptr, cq->size_log2));
	if (FUNC0(cq->rptr, cq->size_log2, cqe))
		return cqe;
	return NULL;
}
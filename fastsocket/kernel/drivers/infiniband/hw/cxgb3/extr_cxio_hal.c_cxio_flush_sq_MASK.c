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
struct t3_wq {scalar_t__ sq_rptr; scalar_t__ sq_wptr; int /*<<< orphan*/  sq_size_log2; struct t3_swsq* sq; } ;
struct t3_swsq {scalar_t__ signaled; } ;
struct t3_cq {int dummy; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct t3_wq*,struct t3_cq*,struct t3_swsq*) ; 

int FUNC2(struct t3_wq *wq, struct t3_cq *cq, int count)
{
	__u32 ptr;
	int flushed = 0;
	struct t3_swsq *sqp = wq->sq + FUNC0(wq->sq_rptr, wq->sq_size_log2);

	ptr = wq->sq_rptr + count;
	sqp = wq->sq + FUNC0(ptr, wq->sq_size_log2);
	while (ptr != wq->sq_wptr) {
		sqp->signaled = 0;
		FUNC1(wq, cq, sqp);
		ptr++;
		sqp = wq->sq + FUNC0(ptr, wq->sq_size_log2);
		flushed++;
	}
	return flushed;
}
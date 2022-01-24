#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ipath_rwq {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_4__ {scalar_t__ size; struct ipath_rwq* wq; } ;
struct TYPE_3__ {scalar_t__ srq; } ;
struct ipath_qp {scalar_t__ r_msn; TYPE_2__ r_rq; TYPE_1__ ibqp; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ IPATH_AETH_CREDIT_INVAL ; 
 scalar_t__ IPATH_AETH_CREDIT_SHIFT ; 
 scalar_t__ IPATH_MSN_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__* credit_table ; 

__be32 FUNC1(struct ipath_qp *qp)
{
	u32 aeth = qp->r_msn & IPATH_MSN_MASK;

	if (qp->ibqp.srq) {
		/*
		 * Shared receive queues don't generate credits.
		 * Set the credit field to the invalid value.
		 */
		aeth |= IPATH_AETH_CREDIT_INVAL << IPATH_AETH_CREDIT_SHIFT;
	} else {
		u32 min, max, x;
		u32 credits;
		struct ipath_rwq *wq = qp->r_rq.wq;
		u32 head;
		u32 tail;

		/* sanity check pointers before trusting them */
		head = wq->head;
		if (head >= qp->r_rq.size)
			head = 0;
		tail = wq->tail;
		if (tail >= qp->r_rq.size)
			tail = 0;
		/*
		 * Compute the number of credits available (RWQEs).
		 * XXX Not holding the r_rq.lock here so there is a small
		 * chance that the pair of reads are not atomic.
		 */
		credits = head - tail;
		if ((int)credits < 0)
			credits += qp->r_rq.size;
		/*
		 * Binary search the credit table to find the code to
		 * use.
		 */
		min = 0;
		max = 31;
		for (;;) {
			x = (min + max) / 2;
			if (credit_table[x] == credits)
				break;
			if (credit_table[x] > credits)
				max = x;
			else if (min == x)
				break;
			else
				min = x;
		}
		aeth |= x << IPATH_AETH_CREDIT_SHIFT;
	}
	return FUNC0(aeth);
}
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
struct ipath_rwqe {int dummy; } ;
struct ipath_rq {int max_sge; TYPE_1__* wq; } ;
struct ib_sge {int dummy; } ;
struct TYPE_2__ {scalar_t__ wq; } ;

/* Variables and functions */

__attribute__((used)) static inline struct ipath_rwqe *FUNC0(struct ipath_rq *rq,
					      unsigned n)
{
	return (struct ipath_rwqe *)
		((char *) rq->wq->wq +
		 (sizeof(struct ipath_rwqe) +
		  rq->max_sge * sizeof(struct ib_sge)) * n);
}
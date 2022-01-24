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
struct sge_rspq {int /*<<< orphan*/  lock; } ;
struct port_info {int first_qset; int nqsets; } ;
struct TYPE_4__ {TYPE_1__* qs; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {struct sge_rspq rspq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct adapter *adap, const struct port_info *p)
{
	int i;

	for (i = p->first_qset; i < p->first_qset + p->nqsets; i++) {
		struct sge_rspq *q = &adap->sge.qs[i].rspq;

		FUNC0(&q->lock);
		FUNC1(&q->lock);
	}
}
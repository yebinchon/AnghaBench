#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qib_ibport {TYPE_1__* sm_ah; struct ib_mad_agent* send_agent; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {int num_pports; TYPE_3__* pport; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_8__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_4__ timer; } ;
struct TYPE_7__ {TYPE_2__ cong_stats; struct qib_ibport ibport_data; } ;
struct TYPE_5__ {int /*<<< orphan*/  ibah; } ;

/* Variables and functions */
 struct qib_devdata* FUNC0 (struct qib_ibdev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_agent*) ; 

void FUNC4(struct qib_ibdev *dev)
{
	struct qib_devdata *dd = FUNC0(dev);
	struct ib_mad_agent *agent;
	struct qib_ibport *ibp;
	int p;

	for (p = 0; p < dd->num_pports; p++) {
		ibp = &dd->pport[p].ibport_data;
		if (ibp->send_agent) {
			agent = ibp->send_agent;
			ibp->send_agent = NULL;
			FUNC3(agent);
		}
		if (ibp->sm_ah) {
			FUNC2(&ibp->sm_ah->ibah);
			ibp->sm_ah = NULL;
		}
		if (dd->pport[p].cong_stats.timer.data)
			FUNC1(&dd->pport[p].cong_stats.timer);
	}
}
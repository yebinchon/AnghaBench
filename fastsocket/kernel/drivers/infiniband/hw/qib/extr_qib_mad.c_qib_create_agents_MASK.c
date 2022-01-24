#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qib_ibport {struct ib_mad_agent* send_agent; } ;
struct qib_ibdev {int /*<<< orphan*/  ibdev; } ;
struct qib_devdata {int num_pports; TYPE_2__* pport; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_7__ {unsigned long data; scalar_t__ expires; int /*<<< orphan*/  function; } ;
struct TYPE_5__ {TYPE_3__ timer; scalar_t__ counter; } ;
struct TYPE_6__ {struct qib_ibport ibport_data; TYPE_1__ cong_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPT_SMI ; 
 scalar_t__ FUNC0 (struct ib_mad_agent*) ; 
 int FUNC1 (struct ib_mad_agent*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 struct qib_devdata* FUNC3 (struct qib_ibdev*) ; 
 struct ib_mad_agent* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_mad_agent*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  send_handler ; 
 int /*<<< orphan*/  xmit_wait_timer_func ; 

int FUNC7(struct qib_ibdev *dev)
{
	struct qib_devdata *dd = FUNC3(dev);
	struct ib_mad_agent *agent;
	struct qib_ibport *ibp;
	int p;
	int ret;

	for (p = 0; p < dd->num_pports; p++) {
		ibp = &dd->pport[p].ibport_data;
		agent = FUNC4(&dev->ibdev, p + 1, IB_QPT_SMI,
					      NULL, 0, send_handler,
					      NULL, NULL);
		if (FUNC0(agent)) {
			ret = FUNC1(agent);
			goto err;
		}

		/* Initialize xmit_wait structure */
		dd->pport[p].cong_stats.counter = 0;
		FUNC6(&dd->pport[p].cong_stats.timer);
		dd->pport[p].cong_stats.timer.function = xmit_wait_timer_func;
		dd->pport[p].cong_stats.timer.data =
			(unsigned long)(&dd->pport[p]);
		dd->pport[p].cong_stats.timer.expires = 0;
		FUNC2(&dd->pport[p].cong_stats.timer);

		ibp->send_agent = agent;
	}

	return 0;

err:
	for (p = 0; p < dd->num_pports; p++) {
		ibp = &dd->pport[p].ibport_data;
		if (ibp->send_agent) {
			agent = ibp->send_agent;
			ibp->send_agent = NULL;
			FUNC5(agent);
		}
	}

	return ret;
}
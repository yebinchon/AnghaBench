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
struct sge_rspq {size_t cidx; int /*<<< orphan*/  lock; int /*<<< orphan*/ * desc; } ;
struct TYPE_6__ {int nports; } ;
struct TYPE_5__ {TYPE_1__* qs; } ;
struct adapter {TYPE_3__ params; TYPE_2__ sge; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {struct sge_rspq rspq; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_CLI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sge_rspq*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *cookie)
{
	int work_done, w0, w1;
	struct adapter *adap = cookie;
	struct sge_rspq *q0 = &adap->sge.qs[0].rspq;
	struct sge_rspq *q1 = &adap->sge.qs[1].rspq;

	FUNC4(&q0->lock);

	w0 = FUNC1(&q0->desc[q0->cidx], q0);
	w1 = adap->params.nports == 2 &&
	    FUNC1(&q1->desc[q1->cidx], q1);

	if (FUNC2(w0 | w1)) {
		FUNC8(adap, A_PL_CLI, 0);
		FUNC6(adap, A_PL_CLI);	/* flush */

		if (FUNC2(w0))
			FUNC3(adap, q0);

		if (w1)
			FUNC3(adap, q1);

		work_done = w0 | w1;
	} else
		work_done = FUNC7(adap);

	FUNC5(&q0->lock);
	return FUNC0(work_done != 0);
}
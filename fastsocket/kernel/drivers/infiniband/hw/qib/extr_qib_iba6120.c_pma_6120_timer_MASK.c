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
typedef  void* u64 ;
struct qib_ibport {int /*<<< orphan*/  lock; int /*<<< orphan*/  pma_sample_interval; } ;
struct qib_pportdata {struct qib_ibport ibport_data; TYPE_1__* dd; } ;
struct qib_chip_specific {scalar_t__ pma_sample_status; void* sword; void* rword; void* spkts; void* rpkts; void* xmit_wait; int /*<<< orphan*/  pma_timer; } ;
struct TYPE_2__ {struct qib_chip_specific* cspec; } ;

/* Variables and functions */
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_RUNNING ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_STARTED ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*,void**,void**,void**,void**,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct qib_pportdata *ppd = (struct qib_pportdata *)data;
	struct qib_chip_specific *cs = ppd->dd->cspec;
	struct qib_ibport *ibp = &ppd->ibport_data;
	unsigned long flags;

	FUNC2(&ibp->lock, flags);
	if (cs->pma_sample_status == IB_PMA_SAMPLE_STATUS_STARTED) {
		cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_RUNNING;
		FUNC1(ppd, &cs->sword, &cs->rword,
				      &cs->spkts, &cs->rpkts, &cs->xmit_wait);
		FUNC0(&cs->pma_timer,
			  jiffies + FUNC4(ibp->pma_sample_interval));
	} else if (cs->pma_sample_status == IB_PMA_SAMPLE_STATUS_RUNNING) {
		u64 ta, tb, tc, td, te;

		cs->pma_sample_status = IB_PMA_SAMPLE_STATUS_DONE;
		FUNC1(ppd, &ta, &tb, &tc, &td, &te);

		cs->sword = ta - cs->sword;
		cs->rword = tb - cs->rword;
		cs->spkts = tc - cs->spkts;
		cs->rpkts = td - cs->rpkts;
		cs->xmit_wait = te - cs->xmit_wait;
	}
	FUNC3(&ibp->lock, flags);
}
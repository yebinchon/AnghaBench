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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ flags; int /*<<< orphan*/  counter; } ;
struct qib_pportdata {TYPE_1__ cong_stats; } ;
struct qib_ibport {scalar_t__ pma_tag; int /*<<< orphan*/  lock; int /*<<< orphan*/ * pma_counter_select; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_set_cntr_sample ) (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplesresult_ext {int /*<<< orphan*/ * counter; int /*<<< orphan*/  extended_width; void* sample_status; void* tag; } ;
struct ib_pma_mad {scalar_t__ data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 int /*<<< orphan*/  QIBPORTCNTR_PSSTAT ; 
 int /*<<< orphan*/  QIB_CONG_TIMER_PSINTERVAL ; 
 int /*<<< orphan*/  FUNC1 (struct qib_pportdata*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC5 (struct qib_ibdev*) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct qib_pportdata* FUNC8 (struct qib_ibport*) ; 
 int FUNC9 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct qib_pportdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qib_ibdev* FUNC14 (struct ib_device*) ; 
 struct qib_ibport* FUNC15 (struct ib_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct qib_pportdata*) ; 

__attribute__((used)) static int FUNC17(struct ib_pma_mad *pmp,
					 struct ib_device *ibdev, u8 port)
{
	struct ib_pma_portsamplesresult_ext *p =
		(struct ib_pma_portsamplesresult_ext *)pmp->data;
	struct qib_ibdev *dev = FUNC14(ibdev);
	struct qib_devdata *dd = FUNC5(dev);
	struct qib_ibport *ibp = FUNC15(ibdev, port);
	struct qib_pportdata *ppd = FUNC8(ibp);
	unsigned long flags;
	u8 status;
	int i;

	/* Port Sampling code owns the PS* HW counters */
	FUNC7(pmp->data, 0, sizeof(pmp->data));
	FUNC10(&ibp->lock, flags);
	p->tag = FUNC2(ibp->pma_tag);
	if (ppd->cong_stats.flags == IB_PMA_CONG_HW_CONTROL_TIMER)
		p->sample_status = IB_PMA_SAMPLE_STATUS_DONE;
	else {
		status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
		p->sample_status = FUNC2(status);
		/* 64 bits */
		p->extended_width = FUNC3(0x80000000);
		if (status == IB_PMA_SAMPLE_STATUS_DONE) {
			FUNC1(ppd);
			ppd->cong_stats.counter =
				FUNC16(ppd);
			dd->f_set_cntr_sample(ppd,
					      QIB_CONG_TIMER_PSINTERVAL, 0);
			ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_TIMER;
		}
	}
	for (i = 0; i < FUNC0(ibp->pma_counter_select); i++)
		p->counter[i] = FUNC4(
			FUNC6(
				ppd, ibp->pma_counter_select[i]));
	FUNC11(&ibp->lock, flags);

	return FUNC9((struct ib_smp *) pmp);
}
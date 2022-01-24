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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {scalar_t__ flags; } ;
struct qib_pportdata {TYPE_2__ cong_stats; } ;
struct qib_ibport {int /*<<< orphan*/  lock; void* pma_sample_start; void* pma_sample_interval; int /*<<< orphan*/ * pma_counter_select; int /*<<< orphan*/  pma_tag; } ;
struct qib_ibdev {int dummy; } ;
struct qib_devdata {scalar_t__ (* f_portcntr ) (struct qib_pportdata*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* f_set_cntr_sample ) (struct qib_pportdata*,void*,void*) ;} ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplescontrol {scalar_t__ port_select; int /*<<< orphan*/ * counter_select; int /*<<< orphan*/  tag; int /*<<< orphan*/  sample_interval; int /*<<< orphan*/  sample_start; } ;
struct TYPE_3__ {scalar_t__ attr_mod; int /*<<< orphan*/  status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_PMA_CONG_HW_CONTROL_SAMPLE ; 
 scalar_t__ IB_PMA_CONG_HW_CONTROL_TIMER ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_RUNNING ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  QIBPORTCNTR_PSSTAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct qib_devdata* FUNC2 (struct qib_ibdev*) ; 
 int FUNC3 (struct ib_pma_mad*,struct ib_device*,scalar_t__) ; 
 struct qib_pportdata* FUNC4 (struct qib_ibport*) ; 
 int FUNC5 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qib_pportdata*,void*,void*) ; 
 struct qib_ibdev* FUNC10 (struct ib_device*) ; 
 struct qib_ibport* FUNC11 (struct ib_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct ib_pma_mad *pmp,
				      struct ib_device *ibdev, u8 port)
{
	struct ib_pma_portsamplescontrol *p =
		(struct ib_pma_portsamplescontrol *)pmp->data;
	struct qib_ibdev *dev = FUNC10(ibdev);
	struct qib_devdata *dd = FUNC2(dev);
	struct qib_ibport *ibp = FUNC11(ibdev, port);
	struct qib_pportdata *ppd = FUNC4(ibp);
	unsigned long flags;
	u8 status, xmit_flags;
	int ret;

	if (pmp->mad_hdr.attr_mod != 0 || p->port_select != port) {
		pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
		ret = FUNC5((struct ib_smp *) pmp);
		goto bail;
	}

	FUNC6(&ibp->lock, flags);

	/* Port Sampling code owns the PS* HW counters */
	xmit_flags = ppd->cong_stats.flags;
	ppd->cong_stats.flags = IB_PMA_CONG_HW_CONTROL_SAMPLE;
	status = dd->f_portcntr(ppd, QIBPORTCNTR_PSSTAT);
	if (status == IB_PMA_SAMPLE_STATUS_DONE ||
	    (status == IB_PMA_SAMPLE_STATUS_RUNNING &&
	     xmit_flags == IB_PMA_CONG_HW_CONTROL_TIMER)) {
		ibp->pma_sample_start = FUNC1(p->sample_start);
		ibp->pma_sample_interval = FUNC1(p->sample_interval);
		ibp->pma_tag = FUNC0(p->tag);
		ibp->pma_counter_select[0] = p->counter_select[0];
		ibp->pma_counter_select[1] = p->counter_select[1];
		ibp->pma_counter_select[2] = p->counter_select[2];
		ibp->pma_counter_select[3] = p->counter_select[3];
		ibp->pma_counter_select[4] = p->counter_select[4];
		dd->f_set_cntr_sample(ppd, ibp->pma_sample_interval,
				      ibp->pma_sample_start);
	}
	FUNC7(&ibp->lock, flags);

	ret = FUNC3(pmp, ibdev, port);

bail:
	return ret;
}
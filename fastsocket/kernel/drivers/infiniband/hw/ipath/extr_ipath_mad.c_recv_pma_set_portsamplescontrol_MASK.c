#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct ipath_ibdev {scalar_t__ pma_sample_status; int /*<<< orphan*/  pending_lock; void* pma_sample_start; TYPE_2__* dd; void* pma_sample_interval; int /*<<< orphan*/ * pma_counter_select; int /*<<< orphan*/  pma_tag; } ;
struct ipath_cregs {int /*<<< orphan*/  cr_psstart; int /*<<< orphan*/  cr_psinterval; scalar_t__ cr_psstat; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplescontrol {scalar_t__ port_select; int /*<<< orphan*/ * counter_select; int /*<<< orphan*/  tag; int /*<<< orphan*/  sample_interval; int /*<<< orphan*/  sample_start; } ;
struct TYPE_4__ {scalar_t__ attr_mod; int /*<<< orphan*/  status; } ;
struct ib_pma_mad {TYPE_1__ mad_hdr; scalar_t__ data; } ;
struct ib_device {int dummy; } ;
struct TYPE_5__ {struct ipath_cregs* ipath_cregs; } ;

/* Variables and functions */
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_STARTED ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC4 (struct ib_pma_mad*,struct ib_device*,scalar_t__) ; 
 int FUNC5 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipath_ibdev* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static int FUNC9(struct ib_pma_mad *pmp,
					   struct ib_device *ibdev, u8 port)
{
	struct ib_pma_portsamplescontrol *p =
		(struct ib_pma_portsamplescontrol *)pmp->data;
	struct ipath_ibdev *dev = FUNC8(ibdev);
	struct ipath_cregs const *crp = dev->dd->ipath_cregs;
	unsigned long flags;
	u8 status;
	int ret;

	if (pmp->mad_hdr.attr_mod != 0 ||
	    (p->port_select != port && p->port_select != 0xFF)) {
		pmp->mad_hdr.status |= IB_SMP_INVALID_FIELD;
		ret = FUNC5((struct ib_smp *) pmp);
		goto bail;
	}

	FUNC6(&dev->pending_lock, flags);
	if (crp->cr_psstat)
		status = FUNC2(dev->dd, crp->cr_psstat);
	else
		status = dev->pma_sample_status;
	if (status == IB_PMA_SAMPLE_STATUS_DONE) {
		dev->pma_sample_start = FUNC1(p->sample_start);
		dev->pma_sample_interval = FUNC1(p->sample_interval);
		dev->pma_tag = FUNC0(p->tag);
		dev->pma_counter_select[0] = p->counter_select[0];
		dev->pma_counter_select[1] = p->counter_select[1];
		dev->pma_counter_select[2] = p->counter_select[2];
		dev->pma_counter_select[3] = p->counter_select[3];
		dev->pma_counter_select[4] = p->counter_select[4];
		if (crp->cr_psstat) {
			FUNC3(dev->dd, crp->cr_psinterval,
					 dev->pma_sample_interval);
			FUNC3(dev->dd, crp->cr_psstart,
					 dev->pma_sample_start);
		} else
			dev->pma_sample_status = IB_PMA_SAMPLE_STATUS_STARTED;
	}
	FUNC7(&dev->pending_lock, flags);

	ret = FUNC4(pmp, ibdev, port);

bail:
	return ret;
}
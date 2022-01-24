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
struct ipath_ibdev {scalar_t__ pma_tag; scalar_t__ pma_sample_status; int /*<<< orphan*/ * pma_counter_select; TYPE_1__* dd; } ;
struct ipath_cregs {scalar_t__ cr_psstat; } ;
struct ib_smp {int dummy; } ;
struct ib_pma_portsamplesresult {int /*<<< orphan*/ * counter; void* sample_status; void* tag; } ;
struct ib_pma_mad {scalar_t__ data; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {struct ipath_cregs* ipath_cregs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IB_PMA_SAMPLE_STATUS_DONE ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_ibdev*,struct ipath_cregs const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct ib_smp*) ; 
 struct ipath_ibdev* FUNC7 (struct ib_device*) ; 

__attribute__((used)) static int FUNC8(struct ib_pma_mad *pmp,
					  struct ib_device *ibdev)
{
	struct ib_pma_portsamplesresult *p =
		(struct ib_pma_portsamplesresult *)pmp->data;
	struct ipath_ibdev *dev = FUNC7(ibdev);
	struct ipath_cregs const *crp = dev->dd->ipath_cregs;
	u8 status;
	int i;

	FUNC5(pmp->data, 0, sizeof(pmp->data));
	p->tag = FUNC1(dev->pma_tag);
	if (crp->cr_psstat)
		status = FUNC4(dev->dd, crp->cr_psstat);
	else
		status = dev->pma_sample_status;
	p->sample_status = FUNC1(status);
	for (i = 0; i < FUNC0(dev->pma_counter_select); i++)
		p->counter[i] = (status != IB_PMA_SAMPLE_STATUS_DONE) ? 0 :
		    FUNC2(
			FUNC3(dev, crp, dev->pma_counter_select[i]));

	return FUNC6((struct ib_smp *) pmp);
}
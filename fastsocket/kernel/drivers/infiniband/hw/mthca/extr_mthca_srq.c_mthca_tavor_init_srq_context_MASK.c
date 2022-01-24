#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mthca_tavor_srq_context {void* uar; void* lkey; void* state_pd; int /*<<< orphan*/  wqe_base_ds; } ;
struct TYPE_8__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_9__ {TYPE_1__ ibmr; } ;
struct mthca_srq {int wqe_shift; TYPE_2__ mr; } ;
struct TYPE_12__ {TYPE_4__* uobject; } ;
struct mthca_pd {TYPE_5__ ibpd; int /*<<< orphan*/  pd_num; } ;
struct TYPE_13__ {int /*<<< orphan*/  index; } ;
struct mthca_dev {TYPE_6__ driver_uar; } ;
struct TYPE_10__ {int /*<<< orphan*/  index; } ;
struct TYPE_14__ {TYPE_3__ uar; } ;
struct TYPE_11__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_tavor_srq_context*,int /*<<< orphan*/ ,int) ; 
 TYPE_7__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mthca_dev *dev,
					 struct mthca_pd *pd,
					 struct mthca_srq *srq,
					 struct mthca_tavor_srq_context *context)
{
	FUNC2(context, 0, sizeof *context);

	context->wqe_base_ds = FUNC1(1 << (srq->wqe_shift - 4));
	context->state_pd    = FUNC0(pd->pd_num);
	context->lkey        = FUNC0(srq->mr.ibmr.lkey);

	if (pd->ibpd.uobject)
		context->uar =
			FUNC0(FUNC3(pd->ibpd.uobject->context)->uar.index);
	else
		context->uar = FUNC0(dev->driver_uar.index);
}
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
struct ib_pd {int dummy; } ;
struct ocrdma_pd {int dpp_enabled; struct ib_pd ibpd; int /*<<< orphan*/  num_dpp_qp; struct ocrdma_dev* dev; } ;
struct TYPE_2__ {scalar_t__ dev_family; } ;
struct ocrdma_dev {TYPE_1__ nic_info; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct ib_pd* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OCRDMA_GEN2_FAMILY ; 
 int /*<<< orphan*/  OCRDMA_PD_MAX_DPP_ENABLED_QP ; 
 struct ocrdma_dev* FUNC1 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_pd*) ; 
 struct ocrdma_pd* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ocrdma_pd*,struct ib_ucontext*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_pd*) ; 
 int FUNC6 (struct ocrdma_dev*,struct ocrdma_pd*) ; 

struct ib_pd *FUNC7(struct ib_device *ibdev,
			      struct ib_ucontext *context,
			      struct ib_udata *udata)
{
	struct ocrdma_dev *dev = FUNC1(ibdev);
	struct ocrdma_pd *pd;
	int status;

	pd = FUNC3(sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return FUNC0(-ENOMEM);
	pd->dev = dev;
	if (udata && context) {
		pd->dpp_enabled = (dev->nic_info.dev_family ==
					OCRDMA_GEN2_FAMILY) ? true : false;
		pd->num_dpp_qp =
			pd->dpp_enabled ? OCRDMA_PD_MAX_DPP_ENABLED_QP : 0;
	}
	status = FUNC6(dev, pd);
	if (status) {
		FUNC2(pd);
		return FUNC0(status);
	}

	if (udata && context) {
		status = FUNC4(pd, context, udata);
		if (status)
			goto err;
	}
	return &pd->ibpd;

err:
	FUNC5(&pd->ibpd);
	return FUNC0(status);
}
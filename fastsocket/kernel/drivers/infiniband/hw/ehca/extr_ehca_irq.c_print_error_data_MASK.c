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
typedef  int u64 ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct ehca_shca {TYPE_2__ ib_device; } ;
struct TYPE_3__ {int /*<<< orphan*/  qp_num; } ;
struct ehca_qp {TYPE_1__ ib_qp; } ;
struct ehca_cq {int /*<<< orphan*/  cq_number; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ERROR_DATA_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,...) ; 

__attribute__((used)) static void FUNC3(struct ehca_shca *shca, void *data,
			     u64 *rblock, int length)
{
	u64 type = FUNC0(ERROR_DATA_TYPE, rblock[2]);
	u64 resource = rblock[1];

	switch (type) {
	case 0x1: /* Queue Pair */
	{
		struct ehca_qp *qp = (struct ehca_qp *)data;

		/* only print error data if AER is set */
		if (rblock[6] == 0)
			return;

		FUNC2(&shca->ib_device,
			 "QP 0x%x (resource=%llx) has errors.",
			 qp->ib_qp.qp_num, resource);
		break;
	}
	case 0x4: /* Completion Queue */
	{
		struct ehca_cq *cq = (struct ehca_cq *)data;

		FUNC2(&shca->ib_device,
			 "CQ 0x%x (resource=%llx) has errors.",
			 cq->cq_number, resource);
		break;
	}
	default:
		FUNC2(&shca->ib_device,
			 "Unknown error type: %llx on %s.",
			 type, shca->ib_device.name);
		break;
	}

	FUNC2(&shca->ib_device, "Error data is available: %llx.", resource);
	FUNC2(&shca->ib_device, "EHCA ----- error data begin "
		 "---------------------------------------------------");
	FUNC1(rblock, length, "resource=%llx", resource);
	FUNC2(&shca->ib_device, "EHCA ----- error data end "
		 "----------------------------------------------------");

	return;
}